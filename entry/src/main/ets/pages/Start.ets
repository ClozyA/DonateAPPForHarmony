//入口指令，入口标识当前这个页面可以显示
import { router } from '@kit.ArkUI'

@Entry
  //现在前端都是组件式开发，这里需要组建的指令是Component
@Component
struct Start {
  build() {
    //使用专业布局方向，不管是竖向Column或横向Row，均使用FLex
    // 鸿蒙组件都是组件名称，后面跟个（），后面再跟{}，所有元素放在{}中
    Flex() {
      //这里需要排列两个启动页的图片，启动页是需要滑动的，使用鸿蒙滑动Swiper
      Swiper() {
        //因为Swiper滑动图片，放置两个图片，如果图片太大，需要图片与Image组件大小吻合ImageFit
        Image($r("app.media.start1"))
          .width('100%')
          .height('100%')
          .backgroundImageSize(ImageSize.Contain)
        Image($r("app.media.start2"))
          .width('100%')
          .height('100%')
          .backgroundImageSize(ImageSize.Contain)
          .onClick(() => {
            router.replaceUrl({
              url: 'pages/Login'
            })
          })
      }
      .margin({
        top: -80
      })

    }
  }
}