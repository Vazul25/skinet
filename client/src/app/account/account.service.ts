import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { BehaviorSubject, Observable, of, ReplaySubject } from 'rxjs';
import { map, tap } from 'rxjs/operators';
import { environment } from 'src/environments/environment';
import { IAddress } from '../shared/models/address';
import { IUser } from '../shared/models/user';

@Injectable({
  providedIn: 'root',
})
export class AccountService {
  baseUrl = environment.apiUrl;
  private currentUserSource = new ReplaySubject<IUser>(1);
  public currentUser$ = this.currentUserSource.asObservable();
  constructor(private http: HttpClient, private router: Router) {}

  login(values: any): Observable<IUser> {
    return this.http.post(this.baseUrl + 'account/login', values).pipe(
      tap((user: IUser) => {
        if (user) {
          localStorage.setItem('token', user.token);
          this.currentUserSource.next(user);
        }
      }),
    );
  }
  getUserAddress(): Observable<IAddress> {
    return this.http.get<IAddress>(`${this.baseUrl}account/address`);
  }
  updateUserAddress(address: IAddress): Observable<IAddress> {
    return this.http.put<IAddress>(`${this.baseUrl}account/address`, address);
  }
  loadCurrentUser(token: string): Observable<any> {
    if (token === null) {
      this.currentUserSource.next(null);
      return of(null); // ne sírjon a subscribe;
    }
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', `Bearer ${token}`);
    return this.http.get(`${this.baseUrl}account`, { headers }).pipe(
      tap((user: IUser) => {
        if (user) {
          localStorage.setItem('token', user.token);
          this.currentUserSource.next(user);
        }
      }),
    );
  }

  logout(): void {
    localStorage.removeItem('token');
    this.currentUserSource.next(null);
    this.router.navigateByUrl('/');
  }

  emailExists(email: string): Observable<any> {
    return this.http.get(`${this.baseUrl}account/emailexists?email=${email}`);
  }

  register(value: any): Observable<IUser> {
    return this.http.post(this.baseUrl + 'account/register', value).pipe(
      tap((user: IUser) => {
        if (user) {
          localStorage.setItem('token', user.token);
          this.currentUserSource.next(user);
        }
      }),
    );
  }
}
