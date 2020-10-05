import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OrderComponent } from './order.component';
import { OrderDetailsComponent } from './order-details/order-details.component';
import { OrderRoutingModule } from './order-routing.module';
import { SharedModule } from '../shared/shared.module';
import { RouterModule } from '@angular/router';

@NgModule({
  declarations: [OrderComponent, OrderDetailsComponent],
  imports: [CommonModule, OrderRoutingModule, RouterModule, SharedModule],
  exports: [OrderComponent],
})
export class OrderModule {}
