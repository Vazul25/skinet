using API.Errors;
using DAL;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace API.Controllers
{
    public class BuggyController : BaseApiController
    {
        private readonly StoreContext _context;

        public BuggyController(StoreContext _context)
        {
            this._context = _context;
        }
        [HttpGet("notFound")]
        public ActionResult GetNotFound()
        {
            var thing = _context.Products.Find(44444);
            if(thing == null)
            {
                return NotFound(new ApiResponse((int)HttpStatusCode.NotFound));
            }
            return Ok();
        }
        [HttpGet("servererror")]
        public ActionResult GetServerError()
        {
            var thing = _context.Products.Find(44444);
            thing.ToString();
           
            return Ok();
          
        }
        [HttpGet("badrequest")]
        public ActionResult GetNotFoundRequest()
        {
            return BadRequest(new ApiResponse((int)HttpStatusCode.BadRequest));
        }
        [HttpGet("badrequest/{id}")]
        public ActionResult GetNotFoundRequest(int id)
        {
            return Ok();
        }

        [HttpGet("testauth")]
        [Authorize]
        public ActionResult<string> GetSecretText()
        {
            return "GetSecretText";
        }
    }
}
