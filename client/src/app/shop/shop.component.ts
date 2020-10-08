import { Component, OnInit, ViewChild } from '@angular/core';
import { IBrand } from '../shared/models/brand';
import { IProduct } from '../shared/models/product';
import { IProductType } from '../shared/models/productType';
import { ShopParams } from '../shared/models/shopParams';
import { ShopService } from './shop.service';

@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: ['./shop.component.scss'],
})
export class ShopComponent implements OnInit {
  @ViewChild('search', { static: false }) searchTerm;
  products: IProduct[];
  brands: IBrand[];
  types: IProductType[];
  shopParams: ShopParams = new ShopParams();
  totalCount: number;
  sortOptions = [
    { name: 'Alphabetical', value: 'name' },
    { name: 'Price: Low to High', value: 'priceAsc' },
    { name: 'Price: High to Low', value: 'priceDesc' },
  ];
  constructor(private shopService: ShopService) {
    this.shopParams = this.shopService.getShopParams();
  }

  ngOnInit(): void {
    this.getProducts(true);
    this.getBrands();
    this.getTypes();
  }

  getProducts(useCache = false): void {
    this.shopService.getProducts(useCache).subscribe(
      (response) => {
        this.products = response.data;
        this.totalCount = response.allResultsCount;
      },
      (error) => {
        console.log(error);
      },
    );
  }

  getBrands(): void {
    this.shopService.getBrands().subscribe(
      (response) => {
        this.brands = [{ id: 0, name: 'all' }, ...response];
      },
      (error) => {
        console.log(error);
      },
    );
  }

  getTypes(): void {
    this.shopService.getTypes().subscribe(
      (response) => {
        this.types = [{ id: 0, name: 'all' }, ...response];
      },
      (error) => {
        console.log(error);
      },
    );
  }
  onPageChanged(event: any): void {
    const params = this.shopService.getShopParams();

    if (params.pageNumber !== event) {
      params.pageNumber = event;
      this.shopService.setShopParams(params);

      this.getProducts(true);
    }
  }

  onBrandSelected(brandId: number): void {
    const params = this.shopService.getShopParams();
    params.brandId = brandId;
    params.pageNumber = 1;
    this.shopService.setShopParams(params);
    this.getProducts();
  }
  onTypeSelected(typeId: number): void {
    const params = this.shopService.getShopParams();
    params.typeId = typeId;
    params.pageNumber = 1;
    this.shopService.setShopParams(params);

    this.getProducts();
  }
  onSortSelected(sort: string): void {
    const params = this.shopService.getShopParams();
    params.sort = sort;
    this.shopService.setShopParams(params);

    this.getProducts();
  }
  getResultFrom(): number {
    const params = this.shopService.getShopParams();
    return (params.pageNumber - 1) * params.pageSize + 1;
  }
  getResultTo(): number {
    const params = this.shopService.getShopParams();
    return params.pageNumber * params.pageSize > this.totalCount
      ? this.totalCount
      : params.pageNumber * params.pageSize;
  }
  onSearch(): void {
    const params = this.shopService.getShopParams();

    params.search = this.searchTerm.nativeElement.value;
    params.pageNumber = 1;
    this.shopService.setShopParams(params);

    this.getProducts();
  }
  onReset(): void {
    console.log('blaba');
    this.searchTerm.nativeElement.value = undefined;
    this.shopParams = new ShopParams();
    this.shopService.setShopParams(this.shopParams);

    this.getProducts();
  }
}
