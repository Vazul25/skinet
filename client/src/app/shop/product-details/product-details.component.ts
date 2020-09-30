import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { BasketService } from 'src/app/basket/basket.service';
import { IProduct } from 'src/app/shared/models/product';
import { ShopService } from 'src/app/shop/shop.service';
import { BreadcrumbService } from 'xng-breadcrumb';

@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.scss'],
})
export class ProductDetailsComponent implements OnInit {
  product: IProduct;
  quantity: number = 1;

  constructor(private shopService: ShopService, private activatedRoute: ActivatedRoute, private bcService: BreadcrumbService, private basketService: BasketService) {
    this.bcService.set('@productDetails', ' ');
  }
  ngOnInit(): void {
    this.loadProduct();
  }
  loadProduct() {
    this.shopService.getProduct(+this.activatedRoute.snapshot.paramMap.get('id')).subscribe(
      (product) => {
        this.product = product;
        this.bcService.set('@productDetails', product.name);
      },
      (error) => {},
    );
  }
  addItemToBasket() {
    if (this.quantity > 0) {
      this.basketService.addItemToBasket(this.product, this.quantity);
    }
  }
  incrementQuantity(): void {
    this.quantity++;
  }
  decrementQuantity(): void {
    if (this.quantity > 1) this.quantity--;
  }
}
