import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { IBasket, IBasketItem, IBasketTotals } from '../shared/models/basket';
import { BasketService } from './basket.service';

@Component({
  selector: 'app-basket',
  templateUrl: './basket.component.html',
  styleUrls: ['./basket.component.scss'],
})
export class BasketComponent implements OnInit {
  basket$: Observable<IBasket>;
  basketTotals$: Observable<IBasketTotals>;
  constructor(private basketService: BasketService) {}

  ngOnInit(): void {
    this.basket$ = this.basketService.basket$;
    this.basketTotals$ = this.basketService.basketTotals$;
  }
  removeBasketItem(item: IBasketItem): void {
    this.basketService.removeItemFromBasket(item);
  }
  incrementBasketItem(item: IBasketItem): void {
    this.basketService.incrementBaksetItem(item);
  }
  decrementBasketItem(item: IBasketItem): void {
    this.basketService.decrementBasketItem(item);
  }
}
