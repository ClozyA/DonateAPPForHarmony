import Goods from '../data/Goods'

@Component
export default struct CartSideBar {
  @Link donationAmount:string
  @Link donationItem:string
  @Prop myitem: Goods

  build() {
    Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.Center }) {
      Row() {
        //前面加一个单选钮
        Radio({ group: "mygroup", value: "" })
          .onChange((value)=>{
            this.donationAmount = 1+""
            this.donationItem = "不捐赠物资"
          })
        //先布一项
        Image(this.myitem.pic)
          .width(100)
          .height(200)
        Column() {
          Text(this.myitem.name)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .width("100%")
            .margin({ left: 10, top: 5 })
          Text("捐款期望值:" + this.myitem.total_price)
            .fontSize(20)
            .fontColor(Color.Red)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5 })
          Text("已捐款数:" + this.myitem.used_price)
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
          Text("可以捐物")
            .fontSize(10)// .fontColor(Color.Green)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5 })


          //捐款选项
          Flex({ direction: FlexDirection.Row }) {
            Text("捐款金额:")
              .fontSize(15)
              .margin({ top: 10 })
            TextInput({ placeholder: "1.00" })
              .fontColor(Color.Red)
              .width(90)
              .height(35)
              .border({ width: 1, color: Color.Gray, style: BorderStyle.Solid })
              .margin({ right: 10, left: 10 })
              .onChange((value) => {
                this.donationAmount = value
              })
            Text("元")
              .margin({ top: 10 })
              .fontSize(15)
          }
          // .border({ width: 1, color: Color.Gray, style: BorderStyle.Solid })
          .width("90%")
          .height(40)
          .margin({ bottom: 10 })

          Flex({ direction: FlexDirection.Row }) {
            Text("捐赠物品:")
              .fontSize(15)
              .margin({ top: 10 })
            Select([
              {value:"不捐赠物资",icon:$r("app.media.money")},
              {value:"电脑",icon:$r("app.media.ComputerOutlined")},
              {value:"手机",icon:$r("app.media.MdPhonePortrait")},
              {value:"衣物",icon:$r("app.media.shirt")
              }])
              .value("电脑")
              .width(120)
              .onSelect((index, value) => {
                //这里只记录选择的内容value，不记录value对应的索引
                this.donationItem = value
              })
          }
          // .border({ width: 1, color: Color.Gray, style: BorderStyle.Solid })
          .width("90%")
          .height(30)
          .margin({ bottom: 20 })
        }

      }
      .margin({ top: 10, bottom: 10 })
      .border({ width: { bottom: 2 } })
      .width("90%")
    }
  }
}