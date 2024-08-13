import TestDialog from './TestDialog'

@Preview
@Component
export default struct AnalyseComponent {
  @State give_num: number = 0
  @State donationAmount: string = ""
  @State donationItem: string = "不捐赠物资"
  @State love_numbers: number = 32164
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
        .fontSize(20)
        .fontColor(Color.Black)

      Button("捐赠")
        .width("20%")
        .fontSize(20)
        .height(40)
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