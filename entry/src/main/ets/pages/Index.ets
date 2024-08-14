import IndexComponet from '../componet/IndexComponet'
import DonateComponets from '../componet/DonateComponets'
import Mine from '../componet/Mine'
import nav from '../mockjs/nav'
import MyIsland from '../componet/MyIsland'
import { Header } from '../componet/Header'

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
        .fillColor(this.mynav_switch == index ? Color.Red : Color.Gray)
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
          Flex({
            direction: FlexDirection.Column,
          }) {
            Header({
              isIndex: false,
              title: "首页"
            })
            IndexComponet()
          }

        }.tabBar(this.customTabs(0))

        TabContent() {
          Flex({
            direction: FlexDirection.Column,
          }) {
            Header({
              isIndex: false,
              title: "捐助"
            })
            DonateComponets()
          }

        }.tabBar(this.customTabs(1))

        TabContent() {
          Flex({
            direction: FlexDirection.Column,
          }) {
            Header({
              isIndex: false,
              title: "捐助岛"
            })
            MyIsland()
          }

        }.tabBar(this.customTabs(2))

        TabContent() {
          Flex({
            direction: FlexDirection.Column,
          }) {
            Header({
              isIndex: false,
              title: "我的"
            })
            Mine()
          }

        }.tabBar(this.customTabs(3))

      }.onChange((index) => {
        this.mynav_switch = index
      })
    }

  }
}