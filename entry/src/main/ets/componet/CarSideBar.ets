import Goods from '../data/Goods'

@Component
export default struct CarSideBar {
  @Prop myitem: Goods
  @Prop donationAmount: string = ""
  @Prop donationItem: string = "不捐赠物资"

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
            Flex({
              direction: FlexDirection.Row,
              justifyContent: FlexAlign.Center,
              alignItems: ItemAlign.Center,
            }) {
              //可以输入捐赠金额、选择捐赠物资
              Text("捐款金额：")
                .fontSize(20)
                .fontColor(Color.Black)
                .width('100.00vp')


              TextInput({
                placeholder: $r("app.string.PleaseInputDonateAmount")
              })
                .width('50.00%')
                .onChange((value) => {
                  this.donationAmount = value
                })
                .height('35vp')
              Text("元")
            }
            .borderWidth('0.00vp')
            .height('40.00vp')
            .margin({
              top: '0.00vp',
              right: '0.00vp',
              bottom: '10.00vp',
              left: '0.00vp'
            })

            Flex({
              direction: FlexDirection.Row,
              justifyContent: FlexAlign.Center,
              alignItems: ItemAlign.Center,
            }) {
              //可以输入捐赠金额、选择捐赠物资
              Text("捐赠物资：")
                .fontSize(20)
                .fontColor(Color.Black)
                .width('100.00vp')

              Select([
                { value: "不捐赠物资", icon: $r("app.media.money") },
                { value: "电脑", icon: $r("app.media.ComputerOutlined") },
                { value: "手机", icon: $r("app.media.MdPhonePortrait") },
                {
                  value: "衣物", icon: $r("app.media.shirt")
                }])
                .value("不捐赠物资")
                .width(150)
                .onSelect((index, value) => {

                  //这里只记录选择的内容value，不记录value对应的索引
                  this.donationItem = value
                })
              Text("元")
            }
            .height('50vp')
          }
          .height('150.00vp')
          .margin({
            top: '0.00vp',
            right: '0.00vp',
            bottom: '20.00vp',
            left: '0.00vp'
          })
        }
      }

    }
  }
}

