import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, pipe, Subscription } from 'rxjs';
import { map } from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { Basket, IBasket, IBasketItem, IBasketTotals } from '../shared/models/basket';
import { IDeliveryMethod } from '../shared/models/deliveryMethod';
import { IProduct } from '../shared/models/product';

@Injectable({
  providedIn: 'root',
})
export class BasketService {
  baseUrl = environment.apiUrl;
  private basketSource = new BehaviorSubject<IBasket>(null);
  basket$ = this.basketSource.asObservable();
  private basketTotalSource = new BehaviorSubject<IBasketTotals>(null);
  basketTotals$ = this.basketTotalSource.asObservable();
  shipping = 0;

  constructor(private http: HttpClient) {}

  createPaymentIntent() {
    return this.http.post(this.baseUrl + 'payments/' + this.getCurrentBasketValue().id, {}).pipe(
      map((basket: IBasket) => {
        this.basketSource.next(basket);
        console.log(this.getCurrentBasketValue());
      }),
    );
  }

  setShippingPrice(deliveryMethod: IDeliveryMethod): void {
    this.shipping = deliveryMethod.price;
    const basket = this.getCurrentBasketValue();
    basket.deliveryMethodId = deliveryMethod.id;
    basket.shippingPrice = deliveryMethod.price;

    this.calculateTotals();
    this.setBasket(basket);
  }
  getBasket(id: string): Observable<any> {
    return this.http.get(this.baseUrl + 'basket?id=' + id).pipe(
      map((basket: IBasket) => {
        this.basketSource.next(basket);
        this.shipping = basket.shippingPrice;
        this.calculateTotals();
      }),
    );
  }

  setBasket(basket: IBasket): Subscription {
    return this.http.post(this.baseUrl + 'basket', basket).subscribe(
      (response: IBasket) => {
        this.basketSource.next(response);
        this.calculateTotals();
      },
      (error) => {
        console.error(error);
      },
    );
  }

  getCurrentBasketValue(): IBasket {
    return this.basketSource.value;
  }

  addItemToBasket(item: IProduct, quantity = 1): void {
    const itemToAdd: IBasketItem = this.mapProductItemToBasketItem(item, quantity);
    const basket = this.getCurrentBasketValue() ?? this.createBasket();
    // todo szerintem ez fölös értékadás mert refként megy
    basket.items = this.addOrUpdateItem(basket.items, itemToAdd, quantity);
    this.setBasket(basket);
  }

  private mapProductItemToBasketItem(item: IProduct, quantity: number): IBasketItem {
    return {
      id: item.id,
      productName: item.name,
      price: item.price,
      pictureUrl: item.pictureUrl,
      quantity,
      brand: item.productBrand,
      type: item.productType,
    };
  }

  private createBasket(): IBasket {
    const basket = new Basket();
    localStorage.setItem('basket_id', basket.id);
    return basket;
  }

  private addOrUpdateItem(items: IBasketItem[], itemToAdd: IBasketItem, quantity: number): IBasketItem[] {
    const index = items.findIndex((i) => i.id === itemToAdd.id);
    if (index !== -1) {
      items[index].quantity += quantity;
    } else {
      itemToAdd.quantity = quantity;
      items.push(itemToAdd);
    }
    return items;
  }

  private calculateTotals(): void {
    const basket = this.getCurrentBasketValue();
    const shipping = this.shipping;
    const subtotal = basket.items.reduce((a, b) => b.price * b.quantity + a, 0);
    const total = subtotal + shipping;
    this.basketTotalSource.next({ shipping, total, subtotal });
  }

  incrementBaksetItem(item: IBasketItem): void {
    const basket = this.getCurrentBasketValue();
    basket.items = this.addOrUpdateItem(basket.items, item, 1);
    this.setBasket(basket);
  }
  decrementBasketItem(item: IBasketItem): void {
    const basket = this.getCurrentBasketValue();
    const index = basket.items.findIndex((i) => i.id === item.id);
    if (index > -1) {
      basket.items[index].quantity--;
      if (basket.items[index].quantity <= 0) {
        basket.items.splice(index, 1);
      }
      if (basket.items.length > 0) {
        this.setBasket(basket);
      } else {
        this.deleteBasket(basket);
      }
    }
  }

  removeItemFromBasket(item: IBasketItem) {
    const basket = this.getCurrentBasketValue();
    const index = basket.items.findIndex((i) => i.id === item.id);
    if (index !== -1) {
      basket.items.splice(index, 1);
    }
    if (basket.items.length <= 0) {
      this.deleteBasket(basket);
    } else {
      this.setBasket(basket);
    }
  }

  deleteBasket(basket: IBasket): any {
    return this.http.delete(this.baseUrl + 'basket?id=' + basket.id).subscribe(
      () => {
        this.basketSource.next(null);
        this.basketTotalSource.next(null);
        localStorage.removeItem('basket_id');
      },
      (error) => {
        console.log(error);
      },
    );
  }

  deleteBasketLocally(id: string) {
    this.basketSource.next(null);
    this.basketTotalSource.next(null);
    localStorage.removeItem('basket_id');
  }
}
