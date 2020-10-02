import { AbstractControl, ValidatorFn } from '@angular/forms';

export default function myEmailValidator(): ValidatorFn {
  return (control: AbstractControl): { [key: string]: any } | null => {
    const regexp = new RegExp(`^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$`);
    const valid = regexp.test(control.value);
    return !valid ? { invalidEmail: { value: control.value, message: 'is not a valid email' } } : null;
  };
}
