﻿using API.Errors;
using Core.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Core.Entities;
using Stripe;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Order = Core.Entities.OrderAggregate.Order;
using Microsoft.Extensions.Logging;

namespace API.Controllers
{
    public class PaymentsController : BaseApiController
    {
        private readonly IPaymentService _paymentService;
        private readonly ILogger<IPaymentService> _logger;
        private const string WhSecret = "whsec_9i5grV7n7Mo5ECkE1MIc0YbyYIYo3XJl";
        public PaymentsController(IPaymentService paymentService, ILogger<IPaymentService> logger)
        {
            _paymentService = paymentService;
            _logger = logger;
        }

        [Authorize]
        [HttpPost("{basketId}")]
        public async Task<ActionResult<CustomerBasket>> CreateOrUpdatePaymentIntent(string basketId)
        {
            var basket = await _paymentService.CreateOrUpdatePaymentIntent(basketId);
            if (basket is null)
                return BadRequest(new ApiResponse(StatusCodes.Status400BadRequest, "Problem with your basket"));
            return basket;
        }

        [HttpPost("webhook")]
        public async Task<ActionResult> StripeWebhook()
        {
            var json = await new StreamReader(HttpContext.Request.Body).ReadToEndAsync();
            var stripeEvent = EventUtility.ConstructEvent(json, Request.Headers["Stripe-Signature"], WhSecret);
            PaymentIntent intent;
            Order order;
            switch (stripeEvent.Type)
            {
                case "payment_intent.succeeded":
                    intent = (PaymentIntent)stripeEvent.Data.Object;
                    _logger.LogInformation("Payment Succeeded: ", intent.Id);
                     order = await _paymentService.UpdateOrderPaymentSucceeded(intent.Id);
                    _logger.LogInformation("Order updated to payment received: ", order.Id);
                    break;
                case "payment_intent.payment_failed":
                    intent = (PaymentIntent)stripeEvent.Data.Object;
                    _logger.LogInformation("Payment failed: ", intent.Id);
                     order = await _paymentService.UpdateOrderPaymentFailed(intent.Id);
                    _logger.LogInformation("Order updated to payment failed: ", order.Id);

                    break;
            }
            return new EmptyResult();
        }
    }
}
