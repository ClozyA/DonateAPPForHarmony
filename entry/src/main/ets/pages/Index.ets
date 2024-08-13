import IndexComponet from '../componet/IndexComponet'
import { router } from '@kit.ArkUI'
import NewSliderbar from '../componet/DonateComponets'
import IslandComponets from '../componet/IslandComponets'
import DonateComponets from '../componet/DonateComponets'
import Mine from '../componet/Mine'
import nav from '../mockjs/nav'

@Entry
@Component
struct Index {
  @State mynav_switch: number = 0
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
      Image(this.mynav_switch == index ? nav[index].selectedIcon : nav[index].icon)
        .width(35)
        .height(35)
        .fillColor(this.mynav_switch == index ?Color.Red :Color.Gray)
        .margin({
          bottom: 5
        })
      Text(nav[index].mytxt)
        .fontSize(12)
        .fontColor(this.mynav_switch == index ? nav[index].selectedColor : nav[index].color)
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
          Mine()

        }.tabBar(this.customTabs(3))

      }.onChange((index)=>{
        this.mynav_switch = index
      })
    }

  }
}