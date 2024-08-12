import SidebarLinkage from './SidebarLinkage'
import goods from '../mockjs/goods'
import GoodCategory from '../data/GoodCategory'

@Entry
@Component
export default struct SildebarLinkPage {
  @State mygoods: Array<GoodCategory> = goods

  @Builder
  myCouseItem(item: GoodCategory) {
    Row() {
      Text(item.classifyName)
        .fontSize(30)
        .fontColor(Color.White)
        .width('100%')
        .height(100)
        .backgroundColor(Color.Red)
        .onClick(() => {
          console.log('点击了')
        })
    }

  }

  build() {
    Flex() {
      SidebarLinkage({
        CourseItem: this.myCouseItem,
        dataList: goods,
        requestSuccess: false
      })
    }
  }
}

