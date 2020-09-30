import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { BasketService } from 'src/app/basket/basket.service';
import { IBasketTotals } from '../../models/basket';

@Component({
  selector: 'app-order-totals',
  templateUrl: './order-totals.component.html',
  styleUrls: ['./order-totals.component.scss'],
})
export class OrderTotalsComponent implements OnInit {
  constructor(private basketService: BasketService) {}
  basketTotal$: Observable<IBasketTotals>;
  ngOnInit(): void {
    this.basketTotal$ = this.basketService.basketTotals$;
  }
}
