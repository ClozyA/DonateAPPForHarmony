import TestDialog from './TestDialog'

@Preview
@Component
export default struct AnalyseComponent {
  @Prop give_num: number = 0
  @Prop donationAmount: string = ""
  @Prop donationItem: string = "不捐赠物资"
  @Prop love_numbers: number = 32164
  private customDialog: CustomDialogController = new CustomDialogController({
    builder: TestDialog({
      give_sub_num: this.give_num,
      donationAmount: this.donationAmount,
      donationItem: this.donationItem,
      love_number: (this.love_numbers + "").split(""),
    })
  })

  build() {
    Flex({
      direction: FlexDirection.Row,
      justifyContent: FlexAlign.SpaceAround,
      alignItems: ItemAlign.Center,
    }) {
      Text("捐钱：" + this.donationAmount + "，捐赠物品：" + this.donationItem)
        .fontSize(18)
        .fontColor(Color.Black)
        .height(30)

      Button("捐赠")
        .width("20%")
        .fontSize(15)
        .height(20)
        .backgroundColor(Color.Red)
        .onClick(() => {
          if (this.donationAmount != "" || this.donationItem != "") {
            this.give_num++
            this.customDialog.open();
          }
        })
    }
    .width("100%")


  }
}