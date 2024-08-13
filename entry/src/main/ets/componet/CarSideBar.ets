import Goods from '../data/Goods'

@Component
export default struct CarSideBar {
  @Prop myitem: Goods

  build() {
    Row() {
      Radio({ group: "mygroup", value: "" })
      Column() {
        Row() {
          Image(this.myitem.pic)
            .width(100)
            .height(100)
          Flex({
            direction: FlexDirection.Column,
          }) {
            Text(this.myitem.name)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .width("100%")
              .margin({ left: 10 })
            Text("目标金额：" + this.myitem.total_price + "元")
              .fontSize(18)
              .fontColor(Color.Red)
              .width("100%")
              .textAlign(TextAlign.Start)
              .margin({ left: 10, top: 5 })
            Text("目前已捐助：" + this.myitem.used_price + "元")
              .fontSize(14)
              .fontColor(Color.Green)
              .width("100%")
              .textAlign(TextAlign.Start)
              .margin({ left: 10, top: 5 })
            Text(this.myitem.company)
              .fontSize(12)// .fontColor(Color.Green)
              .width("100%")
              .textAlign(TextAlign.Start)
              .margin({ left: 10, top: 5 })
            Text(this.myitem.object_content)
              .fontSize(10)// .fontColor(Color.Green)
              .width("100%")
              .textAlign(TextAlign.Start)
              .margin({ left: 10, top: 5 })
              .flexBasis("auto")
          }
        }

      }
    }
  }
}
