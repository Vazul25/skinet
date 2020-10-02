import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { AccountService } from './account/account.service';
import { BasketService } from './basket/basket.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
  title = 'client';

  constructor(private http: HttpClient, private accountService: AccountService, private basketService: BasketService) {}

  ngOnInit(): void {
    this.loadBasket();
    this.loadUser();
  }

  loadUser(): void {
    const token = localStorage.getItem('token');

    this.accountService.loadCurrentUser(token).subscribe(
      () => {
        console.log('user loaded');
      },
      (error) => {
        console.error(error);
      },
    );
  }

  loadBasket(): void {
    const basketId = localStorage.getItem('basket_id');

    if (basketId) {
      this.basketService.getBasket(basketId).subscribe(
        () => console.log('initializedBasket'),
        (error) => console.log(error),
      );
    }
  }
}
