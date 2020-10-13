import { Injectable } from '@angular/core';
import { HttpInterceptor, HttpEvent, HttpHandler, HttpRequest } from '@angular/common/http';
import { Observable } from 'rxjs';
import { BusyService } from '../services/busy.service';
import { delay, finalize } from 'rxjs/operators';

@Injectable()
export class LoadingInterceptor implements HttpInterceptor {
  constructor(private busyService: BusyService) {}

  private dontShowLoader(req) {
    return (req.method === 'Post' && req.url.includes('orders')) || req.url.includes('emailexists');
  }

  intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    if (this.dontShowLoader(req)) {
      return next.handle(req);
    }

    this.busyService.busy();

    return next.handle(req).pipe(
      // delay(100),
      finalize(() => {
        this.busyService.idle();
      }),
    );
  }
}
