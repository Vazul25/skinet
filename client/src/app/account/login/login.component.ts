import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import * as CustomValidators from 'src/app/shared/validators/index';
import { AccountService } from '../account.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  returnUrl: string;
  constructor(private accountService: AccountService, private router: Router, private activatedRoute: ActivatedRoute) {}

  createLoginForm(): void {
    this.loginForm = new FormGroup({
      email: new FormControl(
        '',
        Validators.compose([
          Validators.required,
          //  Validators.pattern(`^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$`)
          CustomValidators.emailValidator(),
        ]),
      ),
      password: new FormControl('', Validators.required),
    });
  }
  ngOnInit(): void {
    this.returnUrl = this.activatedRoute.snapshot.queryParams.returnUrl || '/shop';
    this.createLoginForm();
  }
  onSubmit(): void {
    this.accountService.login(this.loginForm.value).subscribe(
      (_) => {
        this.router.navigateByUrl(this.returnUrl);
      },
      (error) => console.log(error),
    );
  }
}
