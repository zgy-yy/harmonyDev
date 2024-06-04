@Component
export struct RowLayout {
  build() {
    List() {
      ListItem() {
        Row({ space: 30 }) {
          Text('1').fontSize(35).width('20%').backgroundColor('#ff11ff')
          Text('2').fontSize(45).width('20%').backgroundColor('#ff71c19f')
          Text('3').fontSize(55).width('20%').backgroundColor('#ff5366ac')
        }.height(200).width('100%').alignItems(VerticalAlign.Center).justifyContent(FlexAlign.End)
      }

      ListItem() {
        Stack({ alignContent: Alignment.BottomStart }) {
          Column() {
            Text('Stack子元素1').textAlign(TextAlign.End).fontSize(20)
          }.width(200).height(200).backgroundColor(0xffd306)

          Column() {
            Text('Stack子元素2').fontSize(20)
          }.width(150).height(150).backgroundColor(Color.Pink)

          Column() {
            Text('Stack子元素3').fontSize(20)
          }.width(100).height(100).backgroundColor("#fff3f3ee")
        }
      }.backgroundColor("#ff85ec72").width(300).height(200)

      ListItem() {
        Stack({ alignContent: Alignment.BottomStart }) {
          Column() {
            Text('Stack子元素1').textAlign(TextAlign.End).fontSize(20)
          }.width(200).height(200).backgroundColor(0xffd306)

          Column() {
            Text('Stack子元素2').fontSize(20)
          }.width(150).height(150).backgroundColor(Color.Pink)

          Column() {
            Text('Stack子元素3').fontSize(20)
          }.width(100).height(100).backgroundColor("#fff3f3ee")
        }
      }.backgroundColor("#ffe3ae98").width(400).height(300)

      ListItem() {

        Flex() {
          Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
          Text('2').width('33%').height(50).backgroundColor(0xD2B48C)
          Text('3').width('10%').height(50).backgroundColor(0xF5DEB3)
        }.backgroundColor("#fff3f3ee").height(100).width('90%')
      }

      ListItem() {
        RelativeContainer() {
          Row()
            // 添加其他属性
            .alignRules({
              top: { anchor: '__container__', align: VerticalAlign.Top },
              left: { anchor: '__container__', align: HorizontalAlign.Start }
            }).backgroundColor("#ff72e393").width(30).height(30)
            .id("row1")

          Row()
            .alignRules({
              top: { anchor: '__container__', align: VerticalAlign.Top },
              right: { anchor: '__container__', align: HorizontalAlign.End }
            }).backgroundColor("#ff557ad4").width(30).height(30)
            .id("row2")
        }.height(100).width('90%').backgroundColor("#fff376f3")
      }

    }

  }
}