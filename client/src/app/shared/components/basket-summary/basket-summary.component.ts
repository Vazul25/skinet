import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Observable } from 'rxjs';
import { BasketService } from 'src/app/basket/basket.service';
import { IBasket, IBasketItem } from '../../models/basket';

@Component({
  selector: 'app-basket-summary',
  templateUrl: './basket-summary.component.html',
  styleUrls: ['./basket-summary.component.scss'],
})
export class BasketSummaryComponent implements OnInit {
  @Input() basket: IBasket;
  @Output() decrement: EventEmitter<IBasketItem> = new EventEmitter<IBasketItem>();
  @Output() increment: EventEmitter<IBasketItem> = new EventEmitter<IBasketItem>();
  @Output() remove: EventEmitter<IBasketItem> = new EventEmitter<IBasketItem>();
  @Input() isBasket = true;
  @Input() withType = true;
  constructor(private basketService: BasketService) {}

  ngOnInit(): void {}
  removeBasketItem(item: IBasketItem): void {
    this.remove.emit(item);
  }
  incrementBasketItem(item: IBasketItem): void {
    this.increment.emit(item);
  }
  decrementBasketItem(item: IBasketItem): void {
    this.decrement.emit(item);
  }
}
