import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class VagasService {

  private url = "";
  constructor(private httpClient: HttpClient) { }

  getVagas() = Observable<Vaga[]>{
  return this.httpClient.get<Vaga[]>(this.url);
  }
}
