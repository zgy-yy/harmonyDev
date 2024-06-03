@Component
export struct HelloComponent{
  @State message:string = "hello Component"
  private num :number=0

  aboutToAppear(){
    console.info("##组件实例创建，build函数执行前")
  }
  aboutToDisappear(){
    console.info('##组件析构销毁前')
  }

  @Builder Btn(){
    Button(){
      Text('button').fontSize(30)
    }
  }




  build(){
    Row(){
      Text(this.message+`^${this.num}`).fontSize(30)
      this.Btn()
    }
  }
}
