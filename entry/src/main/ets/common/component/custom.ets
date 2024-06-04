@Component
export struct HelloComponent{
  @Prop msg:string //单向数据流动，字组件改变 不会影响父组件
  @Link num :number

  aboutToAppear(){
    console.info("##组件实例创建，build函数执行前")
  }
  aboutToDisappear(){
    console.info('##组件析构销毁前')
  }

  @Builder Btn(){
    Button(){
      Text('button').fontSize(30).onClick(()=>{
        this.msg ="arkTs Component"
        this.num = 40
      })

    }
  }




  build(){
    Row(){
      Text(this.msg+`^${this.num}`).fontSize(30)
      this.Btn()
    }
  }
}
