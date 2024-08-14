import TestDialog from '../componet/TestDialog'
import { router } from '@kit.ArkUI'
import Goods from '../data/Goods'
import { Header } from '../componet/Header'

@Entry
@Component
export default struct IslandComponets {
  // @State mydialog:TestDialog = new TestDialog()
  // @State love_numbers: Array<number> = [2, 5, 6, 4, 8, 9, 7, 1, 2]
  @State goods: Record<string, Goods> = router.getParams() as Record<string, Goods>
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
      direction: FlexDirection.Column,
    }) {
      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Header({
          isIndex: true,
          title: "捐助详情页"
        })
      }

      Flex({
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center,
      }) {
        Image(this.goods.item.pic)
          .width("60%")
          .height("80%")
          .margin({
            // top: -20
          })
          .border({
            width: 1,
            color: Color.Gray,
            style: BorderStyle.Solid,
            radius: 10
          })

      }.backgroundImage($r("app.media.bg2"))
      .width("100%")
      .height('150vp')

      Text(this.goods.item.name)
        .fontSize(30)

      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.SpaceAround,
        alignItems: ItemAlign.Center,
      }) {
        Text("总览")
          .fontSize(25)

        Text("截止日期:" + this.goods.item.end_time)
          .fontSize(20)

      }.margin({
        top: 20
      })

      Flex({
        direction: FlexDirection.Row,
      }) {
        Flex({
          direction: FlexDirection.Column,
          justifyContent: FlexAlign.Center,
          alignItems: ItemAlign.Center,
        }) {
          Text("爱心捐赠数")
            .fontSize(30)
          Flex({
            direction: FlexDirection.Row,
            justifyContent: FlexAlign.SpaceAround,
            alignItems: ItemAlign.Center,
          }) {
            Text(this.goods.item.used_price)
              .fontSize(25)
              .fontColor(Color.White)
            Image($r("app.media.heartsvg1"))
              .width(40)
              .height(40)
              .fillColor(Color.Red)

          }.margin({
            top: 20
          })

        }.backgroundColor(Color.Blue)
        .height(200)
        .width("100%")
        .borderRadius({
          topLeft: 30,
          bottomLeft: 30,
        })

        Flex({
          direction: FlexDirection.Column,

        }) {
          Flex({
            direction: FlexDirection.Column,
            justifyContent: FlexAlign.Center,
            alignItems: ItemAlign.Center,
          }) {
            Text("目标金额")
              .fontSize(20)
              .padding(10)
            Text(this.goods.item.total_price.replace("万", "0000"))
              .fontSize(20)
              .fontColor(Color.White)
          }.backgroundColor(Color.Red)
          .height("100")
          .width("100%")
          .borderRadius({
            topRight: 30
          })

          Flex({
            direction: FlexDirection.Column,
            justifyContent: FlexAlign.Center,
            alignItems: ItemAlign.Center,
          }) {
            Text("待捐赠需求数")
              .fontSize(20)
              .padding(10)
            Text(parseInt(this.goods.item.total_price.replace("万", "0000")) - parseInt(this.goods.item.used_price) +
              "")
              .fontSize(20)
              .fontColor(Color.White)
          }
          .backgroundColor(Color.Green)
          .height("100")
          .width("100%")
          .borderRadius({
            bottomRight: 30
          })
        }
        .height('200vp')
      }
      .margin({
        top: 20,
        bottom: 20,
        left: 20,
        right: 20,
      })
      // .backgroundColor(Color.Gray)
      .height('200.00vp')

      Flex({
        direction: FlexDirection.Column,
        alignItems: ItemAlign.Center,
        justifyContent: FlexAlign.Center,
      }) {
        Flex({
          direction: FlexDirection.Column,
          alignItems: ItemAlign.Center,
          justifyContent: FlexAlign.Center,

        }) {
          Text("野火救援基金会")
            .fontSize(25)
            .width(250)
            .margin({
              top: '0.00vp',
              right: '0.00vp',
              bottom: '10.00vp',
              left: '0.00vp'
            })
            .textAlign(TextAlign.Center)
          Text("救援野火灾区，支持生态恢复")
            .fontSize(15)
            .width(250)
            .textAlign(TextAlign.Start)
        }
        .width("100%")
        // .backgroundColor(Color.Gray)
        .height('100.00vp')


        Flex({
          direction: FlexDirection.Row,
          justifyContent: FlexAlign.Center,
          alignItems: ItemAlign.Center,
        }) {

        }
        .border({
          width: 2,
          color: Color.Gray,
          style: BorderStyle.Solid,
        })
        .width("90%")
        .height(2)
        .backgroundColor(Color.Gray)
        .margin({
          top: '0.00vp',
          right: '20.00vp',
          bottom: '5vp',
          left: '20.00vp'
        })

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


      Flex(
        {
          direction: FlexDirection.Row,
          justifyContent: FlexAlign.SpaceAround,
          alignItems: ItemAlign.Center,
        }
      ) {
        Button() {
          Text("加入捐助岛")
            .fontSize(20)
            .fontColor(Color.White)
            .backgroundColor(Color.Blue)
            .width("35%")
            .height("40")
            .borderRadius(20)
            .textAlign(TextAlign.Center)
            .onClick(() => {
              AlertDialog.show({
                message: "感谢您的支持"
              })
            })
        }

        Button() {
          Text("我要捐赠")
            .fontSize(20)
            .fontColor(Color.White)
            .backgroundColor(Color.Blue)
            .width("35%")
            .height("40")
            .borderRadius(20)
            .textAlign(TextAlign.Center)
            .onClick(() => {
              if (this.donationAmount != "" || this.donationItem != "") {
                this.give_num++
                this.customDialog.open();
              }
            })
        }
      }

    }
    .width('100.00%')
    .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })
    .height('100.00%')

  }
}

