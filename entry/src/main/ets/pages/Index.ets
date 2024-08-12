import IndexComponet from '../componet/IndexComponet'
import { router } from '@kit.ArkUI'
import NewSliderbar from '../componet/DonateComponets'
import IslandComponets from '../componet/IslandComponets'
import DonateComponets from '../componet/DonateComponets'

@Entry
@Component
struct Index {
  @State tabicons: Array<Resource> =
    [
      $r("app.media.planetoutline"),
      $r("app.media.Donate3"),
      $r("app.media.ribbonoutline"),
      $r("app.media.personcircleoutline")
    ]
  @State tabtexts: Array<Resource> =
    [
      $r("app.string.Home"),
      $r("app.string.Donate"),
      $r("app.string.DonateIsland"),
      $r("app.string.Mine")
    ]

  @Builder
  customTabs(index: number) {
    Column() {
      Image(this.tabicons[index])
        .width(35)
        .height(35)
        .fillColor(Color.Gray)
        .margin({
          bottom: 5
        })
      Text(this.tabtexts[index])
        .fontSize(12)
        .fontColor(Color.Gray)
    }
  }

  build() {

    Flex() {
      Tabs({
        barPosition: BarPosition.End,
      }) {
        TabContent() {
          IndexComponet()

        }.tabBar(this.customTabs(0))

        TabContent() {
          DonateComponets()

        }.tabBar(this.customTabs(1))

        TabContent() {
          IslandComponets()

        }.tabBar(this.customTabs(2))

        TabContent() {
          Text("我的").fontSize(50)

        }.tabBar(this.customTabs(3))

      }
    }

  }
}