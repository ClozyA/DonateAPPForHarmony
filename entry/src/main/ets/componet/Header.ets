import { router } from '@kit.ArkUI'

// @Preview
@Component
export struct Header {
  @Prop isIndex: boolean = false
  @Prop title:string = ""
  // @State isIndex: boolean = true
  // @State title: string = "首页-测试数据"

  build() {
    Flex({
      direction: FlexDirection.Row,
      justifyContent: FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Center,
    }) {
      Image(this.isIndex ? $r("app.media.ArrowBackFilled") : "")
        .width("8%")
        .height(30)
        .margin({
          left: 5
        })
        .onClick(() => {
          router.back()
        })

      Text(this.title)
        .width("80%")
        .fontSize(25)
        .fontColor(Color.Black)
        .textAlign(TextAlign.Center)
      Image($r("app.media.IosSettings"))
        .width("8%")
        .height(30)
        .margin({
          right: 5
        })

    }.backgroundColor('#F1F3F5')
    .height(30)

  }
}