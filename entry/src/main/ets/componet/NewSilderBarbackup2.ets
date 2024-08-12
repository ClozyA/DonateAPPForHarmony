import GoodCategory from '../data/GoodCategory'
import Goods from '../data/Goods'
import goods from '../mockjs/goods'
import RightSideBar from './RightSideBar'
import SideBar from './SideBar'

@Entry
@Component
export default struct NewSliderbar2 {
  @State newitem: Array<Goods> = []
  @State selectedIndex: number = -1
  scroller: Scroller = new Scroller()
  @State itemHeight: number = 406
  @State singleItemHeight: number = 101.75
  @State indexNumber: number = 0

  build() {
    Flex({
      direction: FlexDirection.Row,
    }) {
      Scroll(this.scroller) {
        Flex({
          direction: FlexDirection.Column,
        }) {
          ForEach(goods, (myitem: GoodCategory, index: number) => {
            Text(myitem.classifyName)
              .fontSize(16)
              .padding(10)
              .backgroundColor(this.selectedIndex == index ? Color.Red : Color.Yellow)
              .onClick(() => {
                this.newitem = myitem.courseList
                this.selectedIndex = index
                // const yOffset = this.itemHeight * index  // 假定只有每个分类下只有四个
                const yOffset = this.singleItemHeight * calculateStartIndex(index) // 根据项目数量动态计算偏移量
                this.scroller.scrollTo({ xOffset: 0, yOffset: yOffset })
              })
          })
        }.width('25%')
        .height("100%")
        .backgroundColor(Color.Gray)
      }

      Scroll(this.scroller) {
        Flex({
          direction: FlexDirection.Column
        }) {
          ForEach(goods, (item: GoodCategory) => {
            ForEach(item.courseList, (newitem: Goods) => {
              RightSideBar({ myitem: newitem })
            })
          })
        }.width("75%")
      }
    }
  }
}


function calculateStartIndex(catIndex: number): number {
  let startIndex = 0;
  for (let i = 0; i < catIndex; i++) {
    startIndex += goods[i].courseList.length;
  }
  return startIndex;
}

