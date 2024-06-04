import { RowLayout } from '../layout/RowLayout'
@Entry
@Component
struct Layout {
  @State message: string = 'Hello World'

  build() {
      Column() {
        RowLayout()
      }
      .width('100%').backgroundColor(Color.Gray)
  }
}