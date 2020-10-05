import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { IOrder } from '../shared/models/order';
import { IOrderToReturn } from '../shared/models/orderToReturn';
import { OrderService } from './order.service';

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.scss'],
})
export class OrderComponent implements OnInit {
  orders$: Observable<IOrderToReturn[]>;
  constructor(private orderService: OrderService, private router: Router) {}

  ngOnInit(): void {
    this.orders$ = this.orderService.getOrders();
  }
  showDetails(id: number) {
    this.router.navigateByUrl('/order/' + id);
  }
}
