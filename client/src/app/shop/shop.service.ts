import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { IBrand } from '../shared/models/brand';
import { IPagination, Pagination } from '../shared/models/pagination';
import { IProductType } from '../shared/models/productType';
import { map, tap } from 'rxjs/operators';
import { ShopParams } from '../shared/models/shopParams';
import { IProduct } from '../shared/models/product';
import { Action } from 'rxjs/internal/scheduler/Action';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root',
})
export class ShopService {
  public baseUrl = environment.apiUrl;
  public brands: IBrand[] = [];
  public pagination = new Pagination();

  public shopParams = new ShopParams();
  public types: IProductType[] = [];
  productCache = new Map<string, IProduct[]>();
  productDetailsCache = new Map<number, IProduct>();

  constructor(private http: HttpClient) {}

  public getBrands(): Observable<IBrand[]> {
    if (this.brands.length > 0) {
      return of(this.brands);
    }
    return this.http.get<IBrand[]>(this.baseUrl + 'products/brands').pipe(tap((response) => (this.brands = response)));
  }

  public getProduct(id: number): Observable<IProduct> {
    // let product: IProduct = null;
    // for (let [key, value] of this.productCache) {
    //   product = value.find((p) => p.id === id);
    //   if (product) {
    //     return of(product);
    //   }
    // }
    const product = this.productDetailsCache.get(id);
    if (product) {
      return of(product);
    }
    return this.http.get<IProduct>(this.baseUrl + 'products/' + id);
  }

  public getProducts(useCache: boolean): Observable<IPagination> {
    if (useCache === false) {
      this.productCache = new Map();
    }

    if (this.productCache.size > 0 && useCache === true) {
      if (this.productCache.has(Object.values(this.shopParams).join('-'))) {
        this.pagination.data = this.productCache.get(Object.values(this.shopParams).join('-'));

        return of(this.pagination);
      }
    }

    let params = new HttpParams();
    if (this.shopParams.brandId !== 0) {
      params = params.append('brandId', this.shopParams.brandId.toString());
    }
    if (this.shopParams.typeId !== 0) {
      params = params.append('typeId', this.shopParams.typeId.toString());
    }
    if (this.shopParams.search.length !== 0) {
      params = params.append('search', this.shopParams.search);
    }
    params = params.append('sort', this.shopParams.sort);
    params = params.append('pageSize', this.shopParams.pageSize.toString());
    params = params.append('pageIndex', this.shopParams.pageNumber.toString());
    return this.http
      .get<IPagination>(this.baseUrl + 'products', {
        observe: 'response',
        params,
      })
      .pipe(
        map((response) => {
          this.productCache.set(Object.values(this.shopParams).join('-'), response.body.data);
          response.body.data.forEach((p) => this.productDetailsCache.set(p.id, p));
          this.pagination = response.body;
          return this.pagination;
        }),
      );
  }

  public getTypes(): Observable<IProductType[]> {
    if (this.types.length > 0) {
      return of(this.types);
    }

    return this.http
      .get<IProductType[]>(this.baseUrl + 'products/types')
      .pipe(tap((response) => (this.types = response)));
  }

  setShopParams(params: ShopParams): void {
    this.shopParams = params;
  }
  getShopParams(): ShopParams {
    return this.shopParams;
  }
}
