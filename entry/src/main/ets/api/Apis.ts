
import { httpApi } from './ApiHttp'
const baseUrl = ''

export function  getHome(url:string){
 return httpApi.get(baseUrl+url)
}