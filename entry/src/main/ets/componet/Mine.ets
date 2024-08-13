import juan_data from '../mockjs/juan'
import options from '../mockjs/options'
import category from '../data/MyCategory'

@Entry
@Component
export default struct Mine {
  build() {
    Scroll() {
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center,
    }) {

        Flex({
          direction: FlexDirection.Column,
          justifyContent: FlexAlign.Center,
          alignItems: ItemAlign.Center,
        }) {
          Flex({
            direction: FlexDirection.Column,
            justifyContent: FlexAlign.Center,
            alignItems: ItemAlign.Center,
          }) {
            Image($r("app.media.touxiang"))
              .width(100)
              .height(100)
              .borderRadius(50)
          }
          .backgroundColor(Color.White)
          .width("100")
          .height("100")
          .margin({
            bottom: 10
          })
          .borderRadius(50)

          Text("注册人姓名：259")
            .fontSize(30)
            .fontColor(Color.White)

          Text("一般用户")
            .backgroundColor(Color.Gray)
            .fontSize(25)
            .fontColor(Color.White)
            .borderRadius(20)
            .width("35%")
            .textAlign(TextAlign.Center)

        }.width("100%")
        .height(200)
        .linearGradient({
          colors: [
            [0xff0000, 0.0],
            [0xee9900, 1.0]
          ]
        })

        Flex({
          direction: FlexDirection.Column,
          alignItems: ItemAlign.Center,
        }) {
          Image($r("app.media.bankcardbg2"))
            .backgroundImageSize(ImageSize.Auto)
            .height('210vp')
            .width('360vp')
            .borderRadius(30)
            .margin({
              top: 10
            })

          Flex({
            direction: FlexDirection.Column,
          }) {
            Flex() {
              Flex({
                direction: FlexDirection.Row,
                justifyContent: FlexAlign.Start,
              }) {
                Image($r("app.media.bankcardlogo"))
                  .width(60)
                  .height(60)
                  .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '10.00vp' })
              }
              .width('60.00vp')

              Flex({
                direction: FlexDirection.Column,
                justifyContent: FlexAlign.Start,
              }) {
                Text("中国建设银行")
                  .fontSize(23)
                  .width("50%")
                  .height(30)
                  .fontWeight(FontWeight.Bold)
                  .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '5.00vp' })
                Text("China Construction Bank")
                  .fontSize(20)
                  .width('80.00%')
                  .height(30)
                  .fontWeight(FontWeight.Bold)
                  .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '5.00vp' })
              }
              .height('60.00vp')

            }

            Flex() {
              Image($r("app.media.bankcardchip"))
                .width(60)
                .height(60)
                .borderRadius(15)

              Text("6222 6666 6666 6666")
                .fontSize(23)
                .fontWeight(FontWeight.Bold)
                .textAlign(TextAlign.Center)
                .height(60)
                .margin({
                  top: '0.00vp',
                  right: '0.00vp',
                  bottom: '0.00vp',
                  left: '10.00vp'
                })
            }
            .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '10.00vp' })

            Flex({
              justifyContent: FlexAlign.End,
            }) {
              Image($r("app.media.visa"))
                .width(60)
                .height(60)
                .borderRadius(15)
                .margin({
                  right: '15.00vp'
                })
            }
          }
          .margin({
            top: '-195.00vp',
            right: '15.00vp',
            bottom: '0.00vp',
            left: '15.00vp'
          })
          .height('200vp')


          //加一个组件的指示条
          Text("任务功能展示")
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .width("100%")
            .height(30)
            .backgroundColor(Color.Yellow)
            .margin({ top: 20 })

          //第三个元素，横向功能列表
          Flex({ direction: FlexDirection.Row }) {
            //遍历所有的选项数据。然后做布局
            ForEach(options, (item: category) => {
              Flex({ direction: FlexDirection.Column }) {
                Image(item.icon)
                  .width("20%")
                  .height(40)
                  .aspectRatio(1)
                  .objectFit(ImageFit.Contain)
                  .margin({ left: 10, top: 20 })
                Text(item.mytxt)
                  .width("24%")
                  .textAlign(TextAlign.Center)
              }
              .margin({ top: 10, left: 2 })
              .height(120)
              .border({ width: 1, color: Color.Gray, style: BorderStyle.Solid })
              .borderRadius(5)
            })
          }
          .width("100%")
          .height(160)
          .margin({ bottom: 10 })

          //加一个组件的指示条
          Text("捐助功能展示")
            .width("100%")
            .height(30)
            .backgroundColor(Color.Yellow)
            .fontSize(20)
            .fontWeight(FontWeight.Bold)


          //第四个元素，分成一行两个竖列显示捐款众筹的项
          Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
            ForEach(juan_data, (item: category) => {
              Flex({
                direction: FlexDirection.Column,
                justifyContent: FlexAlign.Center,
                alignItems: ItemAlign.Center
              }) {
                Image(item.icon)
                  .width(60)
                  .height(30)
                  .aspectRatio(1)
                  .objectFit(ImageFit.Contain)
                  .margin({ bottom: 20 })
                Text(item.mytxt)
                  .width(100)
                  .textAlign(TextAlign.Center)
              }
              .border({ width: 1, color: Color.Gray, style: BorderStyle.Solid })
              .borderRadius(5)
              .width("45%")
              .height(100)
              .margin({ left: 10 })
            })
          }
          .margin({ top: 10 })
        }
        .width("100%")

        // .height("100%")
      }

      //
      // Flex({
      //   direction: FlexDirection.Column,
      // }){
      //   Text("任务功能提示")
      //     .fontSize(20)
      //     .fontWeight(FontWeight.Bold)
      //     .backgroundColor(Color.Yellow)
      //     .margin({
      //       top:20
      //     })
      //     .width("100%")
      //   Flex({
      //     direction: FlexDirection.Row,
      //   }){
      //     Flex({
      //       direction: FlexDirection.Column,
      //     }){
      //       Image($r("app.media.heartsvg1"))
      //         .height(50)
      //         .width(50)
      //
      //       Text("发布文章")
      //         .width("100%")
      //
      //     }
      //
      //   }.width("20%")
      //
      // }

    }
  }
}