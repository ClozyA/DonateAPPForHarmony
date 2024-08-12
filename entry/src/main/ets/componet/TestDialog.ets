import { router } from '@kit.ArkUI'

// @Entry
@Component
  // @Preview
@CustomDialog
export default struct TestDialog {
  @Prop love_number: Array<string> = []
  @Prop give_sub_num: number
  @Prop donationAmount: string
  @Prop donationItem: string
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
          .margin({
            top: '-50.00vp',
            right: '0.00vp',
            bottom: '0.00vp',
            left: '0.00vp'
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
        top: '-80.00vp',
        right: '0.00vp',
        bottom: '0.00vp',
        left: '110.00vp'
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
            top: '10.00vp',
            right: '0.00vp',
            bottom: '0.00vp',
            left: '0.00vp'
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
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.SpaceAround,
        alignItems: ItemAlign.Auto,
      }) {
        Flex({
          direction: FlexDirection.Column,
          justifyContent: FlexAlign.Center,
          alignItems: ItemAlign.Center,
        }) {
          Flex({
            justifyContent: FlexAlign.Center,
            alignItems: ItemAlign.Center,
          }) {
            Text("捐赠金额：")
              .fontSize(22)
              .fontColor(Color.White)
            Text(this.donationAmount)
              .fontSize(22)
              .fontColor(Color.White)
            Text("元")
              .fontSize(22)
              .fontColor(Color.White)
          }


          Flex({
            justifyContent: FlexAlign.Center,
            alignItems: ItemAlign.Center,
          }) {
            Text("捐赠物资：")
              .fontSize(22)
              .fontColor(Color.White)
              .margin({
                top: '10.00vp',
                right: '0.00vp',
                bottom: '0.00vp',
                left: '0.00vp'
              })
            Text(this.donationItem)
              .fontSize(20)
              .fontColor(Color.White).margin({
              top: '10.00vp',
              right: '0.00vp',
              bottom: '0.00vp',
              left: '0.00vp'
            })

          }
        }
        .height('150vp')
        .width('210vp')


        Flex({
          justifyContent: FlexAlign.Center,
          alignItems: ItemAlign.Center,
        }) {
          Flex({
            direction: FlexDirection.Column,
          }) {

            Text("扫描下方二维码完成捐赠")
              .fontSize(18)
              .fontColor(Color.White)
              .margin({ top: '0.00vp', right: '0.00vp', bottom: '10.00vp', left: '0.00vp' })



            QRCode("https://www.baidu.com")
              .width('80.00vp')
              .height('80.00vp')
          }

        }
        .width('100.00vp')
      }

      .height('150vp')


      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Text("本项目已收到爱心：")
          .fontSize(20)
          .fontColor(Color.White)
          .margin({
            top: '10.00vp',
            right: '0.00vp',
            bottom: '0.00vp',
            left: '0.00vp'
          })
      }

      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        ForEach(this.love_number ?? [], (item: number) => {
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
                top: 10
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