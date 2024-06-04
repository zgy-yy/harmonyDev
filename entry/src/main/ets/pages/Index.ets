import router from '@ohos.router'
import { HelloComponent } from '../common/component/custom'
import http from '@ohos.net.http'
import Request from '@system.request'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State IndNum :number= 11
  onPageShow(){
    console.info("##页面出现")
  }
  onPageHide(){
    console.info("##页面隐藏")
  }

  aboutToAppear(){
    console.info("##页面组件实例创建，build函数执行前")
  }
  aboutToDisappear(){
    console.info('##页面组件析构销毁前')
  }


  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(this.IndNum)
          .fontWeight(FontWeight.Bold).onClick(()=>{
          this.message="hello arkTs"
        })
        Button(){
          Text('next page').fontWeight(FontWeight.Bold).fontSize(32)
        }.type(ButtonType.Capsule)
        .margin({
          top:12
        }).padding(10).onClick(()=>{
          console.info("##click next button")
          router.pushUrl({
            url:'pages/Second'
          }).then(()=>{
            console.info('##success jumping second page')
          })
        })
        HelloComponent({ msg:this.message,num:$IndNum })
        Button(){
          Text("布局页面").fontSize(39)
        }.onClick(()=>{
          router.pushUrl({
            url:'pages/Layout'
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}