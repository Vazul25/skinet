import { AbstractControl, ValidatorFn } from '@angular/forms';

export default function myEmailValidator(): ValidatorFn {
  return (control: AbstractControl): { [key: string]: any } | null => {
    const regexp = new RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#$^+=!*()@%&]).{8,}$');
    const valid = regexp.test(control.value);
    return !valid
      ? {
          invalidPassword: {
            value: control.value,
            message: 'Password must have 1 Uppercase, 1 lowercase, 1 number,1 alphanumeric and at least 6 char long',
          },
        }
      : null;
  };
}
