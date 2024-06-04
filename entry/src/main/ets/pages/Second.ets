import router from '@ohos.router'
import { httpApi } from '../api/ApiHttp'
import { RowLayout } from '../layout/RowLayout'
@Entry
@Component
struct Page {
  @State message: string = 'Second Page'
  onBackPress(){//点击返回时
    console.info("##点击返回")
  }
  onPageShow(){
  }
  build() {
    Column(){
      Text(this.message).fontSize(40)
      Button(){
        Text("back").fontSize(30).padding(12).width(100)
      }.onClick(()=>{
        console.info('## click back')
        router.back()
      })
    }
  }
}