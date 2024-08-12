import { router } from '@kit.ArkUI'

// @Entry
// @Component
// @Preview
@CustomDialog
export default struct TestDialog {
  @State love_numbers: Array<number> = [2, 5, 6, 4, 8, 9, 7, 1, 2]
  @Prop give_sub_num: number
  @Prop donationAmount:string
  @Prop donationItem:string
  mydialogController: CustomDialogController;

  build() {
    Flex({
      direction: FlexDirection.Column,
    }) {
      Flex() {
        Image($r("app.media.banner3"))
          .width("100%")
          .height(200)
          .objectFit(ImageFit.Auto)
          .borderRadius({
            bottomLeft: 50,
            bottomRight: 50
          })
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Image($r("app.media.touxiang"))
          .height(100)
          .width(100)
          .margin({
            top: -65,
            left: -65
          })
          .borderRadius(50)
          .objectFit(ImageFit.Auto)
          .borderRadius(50)
          .border({
            width: 2,
            color: Color.White,
            style: BorderStyle.Solid,
          })
      }.backgroundImage($r("app.media.medal2"))
      .width(200)
      .height(200)
      .margin({
        top: -20,
        left: 110,
      })

      //感谢语
      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Text("感谢您的的支持")
          .fontSize(20)
          .fontColor(Color.White)
          .margin({
            top: 10
          })
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Text("感谢您的第" + this.give_sub_num + "次捐助")
          .fontSize(20)
          .fontColor(Color.White)
          .margin({
            top: 20
          })
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Image($r("app.media.jiangbei"))
          .width(50)

        Text("荣耀 + " + this.give_sub_num)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }){
        Text("捐赠金额：")
          .fontSize(20)
          .fontColor(Color.White)
        Text(this.donationAmount)
          .fontSize(20)
          .fontColor(Color.White)
        Text("元")
        .fontSize(20)
        .fontColor(Color.White)
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }){
        Text("捐赠物资：")
          .fontSize(20)
          .fontColor(Color.White)
        Text(this.donationItem)
          .fontSize(20)
          .fontColor(Color.White)
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Text("本项目已收到爱心：")
          .fontSize(20)
          .fontColor(Color.White)
          .margin({ top: '10.00vp', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })
      }

      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        ForEach(this.love_numbers, (item: number) => {
          Flex({
            justifyContent: FlexAlign.SpaceAround,
            alignItems: ItemAlign.Center,
          }) {
            Text(item.toString())
              .width(20)
              .fontSize(20)
              .fontColor(Color.White)
              .textAlign(TextAlign.Center)
              .margin({
                top: 20
              })

              .backgroundImage($r("app.media.numberbg2"))
          }

        })
        Text("颗")
          .fontSize(20)
          .fontColor(Color.White)
          .margin({
            top: 20
          })
      }.width("80%")
      .margin({
        left: "10%"
      })

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Button("我要传递爱心")
          .fontSize(20)
          .fontColor(Color.White)
          .margin({
            top: 20
          })
          .onClick(() => {
            AlertDialog.show({
              message: "感谢您的支持"
            })
            // router.pushUrl({
            //   url: 'pages/Index'
            // })
          })
      }
    }.backgroundColor(Color.Red)
  }
}