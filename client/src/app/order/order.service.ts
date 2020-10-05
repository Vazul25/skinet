import { getLocaleExtraDayPeriods } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { IOrder } from '../shared/models/order';
import { IOrderToReturn } from '../shared/models/orderToReturn';

@Injectable({
  providedIn: 'root',
})
export class OrderService {
  baseUrl = environment.apiUrl;
  constructor(private http: HttpClient) {}

  public getOrders(): Observable<IOrderToReturn[]> {
    return this.http.get<IOrderToReturn[]>(`${this.baseUrl}orders`);
  }
  public getOrder(id: number): Observable<IOrderToReturn> {
    return this.http.get<IOrderToReturn>(`${this.baseUrl}orders/${id}`);
  }
}
