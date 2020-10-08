import { IProduct } from './product';

export interface IPagination {
  data: IProduct[];
  allResultsCount: number;
  pageNumber: number;
  pageSize: number;
}

export class Pagination implements IPagination {
  data: IProduct[] = [];
  allResultsCount: number;
  pageNumber: number;
  pageSize: number;
}
