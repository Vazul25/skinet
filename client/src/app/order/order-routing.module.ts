import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { RouterModule, Routes } from '@angular/router';
import { OrderComponent } from './order.component';
import { OrderDetailsComponent } from './order-details/order-details.component';

export const routes: Routes = [
  { path: '', component: OrderComponent, data: { breadcrumb: { alias: 'Order' } } },
  { path: ':id', component: OrderDetailsComponent, data: { breadcrumb: { alias: 'OrderDetails' } } },
];
@NgModule({
  declarations: [],
  imports: [CommonModule, RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class OrderRoutingModule {}
