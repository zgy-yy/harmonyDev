import http from '@ohos.net.http';
import hilog from '@ohos.hilog';

let headerConfig = { //请求头 配置
  'Content-Type': 'application/json'
}

interface Config {
  expectDataType?: http.HttpDataType;
  /**
   * @since 9
   */
  usingCache?: boolean; // default is true
  /**
   * @since 9
   */
  priority?: number; // [1, 1000], default is 1.

  /**
   * Read timeout period. The default value is 60,000, in ms.
   */
  readTimeout?: number; // default is 60s
  /**
   * Connection timeout interval. The default value is 60,000, in ms.
   */
  connectTimeout?: number; // default is 60s.
  /**
   * @since 9
   */
  usingProtocol?: http.HttpProtocol; // default is automatically specified by the system.
}

let config: Config = {
  connectTimeout: 6000,
  readTimeout: 6000
}


class Api {
  httpRequest: http.HttpRequest

  constructor() {
    this.httpRequest = http.createHttp();
  }

  private request(url: string, method: http.RequestMethod, data?: string | object | ArrayBuffer) {
    return this.httpRequest.request(url, {
      method: method,
      header: headerConfig,
      extraData: data,
      ...config
    })
  }

  public get(url:string,data?:object) {
    this.request(url, http.RequestMethod.GET,data).then(res => {
      hilog.info(0xff, "[request get success]", JSON.stringify(res))
    }).catch(err => {
      hilog.error(0x00, "[request get error]", JSON.stringify(err))
    })
  }

  public post(url:string,data?:object) {
    this.request(url, http.RequestMethod.POST, data).then(res => {
      hilog.info(0xff, "[request post success]", JSON.stringify(res))
      return res.result
    }).catch(err => {
      hilog.error(0x00, "[request post error]", JSON.stringify(err))
    })
  }
}


export const httpApi = new Api()