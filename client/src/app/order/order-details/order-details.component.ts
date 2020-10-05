import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs';
import { IBasket, IBasketItem, IBasketTotals } from 'src/app/shared/models/basket';
import { IOrder } from 'src/app/shared/models/order';
import { IOrderToReturn } from 'src/app/shared/models/orderToReturn';
import { BreadcrumbService } from 'xng-breadcrumb';
import { OrderService } from '../order.service';

@Component({
  selector: 'app-order-details',
  templateUrl: './order-details.component.html',
  styleUrls: ['./order-details.component.scss'],
})
export class OrderDetailsComponent implements OnInit {
  order: IOrderToReturn;
  constructor(
    private orderService: OrderService,
    private breadcrumbService: BreadcrumbService,
    private activatedRoute: ActivatedRoute,
  ) {}

  ngOnInit(): void {
    this.orderService.getOrder(+this.activatedRoute.snapshot.paramMap.get('id')).subscribe(
      (order: IOrderToReturn) => {
        this.order = order;
        this.breadcrumbService.set('@OrderDetails', `Order# ${order.id} - ${order.status}`);
      },
      (error) => console.error(error),
    );
  }
  createBasket(): IBasket {
    return {
      id: null,
      items: this.order.orderItems.map<IBasketItem>((oi) => {
        return {
          pictureUrl: oi.pictureUrl,
          price: oi.price,
          quantity: oi.quantity,
          productName: oi.productName,
          id: oi.productId,
          brand: null,
          type: null,
        };
      }),
    };
  }
  createBasketTotal(): IBasketTotals {
    return {
      shipping: this.order.shippingPrice,
      subtotal: this.order.subtotal,
      total: this.order.total,
    };
  }
}
