import { AfterViewInit, Component, ElementRef, Input, OnDestroy, OnInit, ViewChild } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { NavigationExtras, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { BasketService } from 'src/app/basket/basket.service';
import { IBasket } from 'src/app/shared/models/basket';
import { IOrder, IOrderToCreate } from 'src/app/shared/models/order';
import { CheckoutService } from '../checkout.service';
declare var Stripe;
@Component({
  selector: 'app-checkout-payment',
  templateUrl: './checkout-payment.component.html',
  styleUrls: ['./checkout-payment.component.scss'],
})
export class CheckoutPaymentComponent implements AfterViewInit, OnDestroy {
  // #region Properties (10)
  @Input() public checkoutForm: FormGroup;
  public stripe: any;
  public cardCvc: any;
  public cardNumber: any;
  public cardExpiry: any;
  @ViewChild('cardExpiry', { static: true }) public cardExpiryElement: ElementRef;
  @ViewChild('cardNumber', { static: true }) public cardNumberElement: ElementRef;
  @ViewChild('cardCvc', { static: true }) public cardCvcElement: ElementRef;
  public cardErrors: any;
  public cardHandler = this.onChange.bind(this);

  // #endregion Properties (10)

  // #region Constructors (1)

  constructor(
    private basketService: BasketService,
    private checkoutService: CheckoutService,
    private toastr: ToastrService,
    private router: Router,
  ) {}

  // #endregion Constructors (1)

  // #region Public Methods (3)

  public ngAfterViewInit(): void {
    this.stripe = Stripe(
      'pk_test_51HZDYhIRdOcOu9MdYWw4EaSZK08QWZhRrhwL2Y1XeN6cCj0BiK0aRTiB6Mma1AT4CTR5DqrYiuapz7B8Lm2Tl4H000Liv6CWxF',
    );
    const elements = this.stripe.elements();
    this.cardNumber = elements.create('cardNumber');
    this.cardNumber.mount(this.cardNumberElement.nativeElement);
    this.cardNumber.addEventListener('change', this.cardHandler);
    this.cardExpiry = elements.create('cardExpiry');
    this.cardExpiry.mount(this.cardExpiryElement.nativeElement);
    this.cardExpiry.addEventListener('change', this.cardHandler);

    this.cardCvc = elements.create('cardCvc');
    this.cardCvc.mount(this.cardCvcElement.nativeElement);
    this.cardCvc.addEventListener('change', this.cardHandler);
  }

  public ngOnDestroy(): void {
    this.cardNumber.destroy();
    this.cardExpiry.destroy();
    this.cardCvc.destroy();
  }
  onChange({ error }) {
    if (error) {
      this.cardErrors = error.message;
    } else {
      this.cardErrors = null;
    }
  }

  public submitOrder(): void {
    const basket = this.basketService.getCurrentBasketValue();
    const orderToCreate = this.getOrderToCreate(basket);
    this.checkoutService.createOrder(orderToCreate).subscribe(
      (order: IOrder) => {
        this.toastr.success('Order created successfully!');
        this.basketService.deleteBasketLocally(basket.id);
        console.log(order);
        const navigationExtras: NavigationExtras = { state: order };
        this.router.navigate(['checkout/success'], navigationExtras);
      },
      (error) => {
        this.toastr.error(error.message);
        console.error(error);
      },
    );
  }

  // #endregion Public Methods (3)

  // #region Private Methods (1)

  private getOrderToCreate(basket: IBasket): IOrderToCreate {
    return {
      basketId: basket.id,
      deliveryMethodId: +this.checkoutForm.get('deliveryForm').get('deliveryMethod').value,
      shipToAddress: this.checkoutForm.get('addressForm').value,
    };
  }

  // #endregion Private Methods (1)
}
