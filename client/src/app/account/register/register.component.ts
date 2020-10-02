import { Component, OnInit } from '@angular/core';
import { AsyncValidator, AsyncValidatorFn, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AccountService } from '../account.service';
import * as CustomValidators from 'src/app/shared/validators/index';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';
import { of, timer } from 'rxjs';
import { map, switchMap } from 'rxjs/operators';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss'],
})
export class RegisterComponent implements OnInit {
  registerForm: FormGroup;
  errors: string[] = [];
  constructor(private fb: FormBuilder, private accountService: AccountService, private router: Router) {}

  ngOnInit(): void {
    this.createRegisterForm();
  }

  createRegisterForm() {
    this.registerForm = this.fb.group({
      displayName: [null, [Validators.required]],
      email: [null, [Validators.required, CustomValidators.emailValidator()], [this.validateEmailNotTaken()]],
      password: [null, [Validators.required, CustomValidators.passwordValidator()]],
    });
  }

  validateEmailNotTaken(): AsyncValidatorFn {
    return (control) => {
      return timer(500).pipe(
        switchMap(() => {
          if (!control.value) {
            return of(null);
          }
          return this.accountService.emailExists(control.value).pipe(
            map((res) => {
              return res ? { emailExists: { message: 'Email already exists' } } : null;
            }),
          );
        }),
      );
    };
  }

  onSubmit(): void {
    this.accountService.register(this.registerForm.value).subscribe(
      (response) => {
        this.router.navigateByUrl('/shop');
      },
      (error) => {
        console.error(error);
        this.errors = error.errors;
      },
    );
  }
}
