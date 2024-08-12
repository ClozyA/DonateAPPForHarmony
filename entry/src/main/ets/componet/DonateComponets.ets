import GoodCategory from '../data/GoodCategory'
import Goods from '../data/Goods'
import goods from '../mockjs/goods'
import RightSideBar from './RightSideBar'
import SideBar from './SideBar'

// @Entry
@Component
export default struct DonateComponets {
  @State newitem: Array<Goods> = []
  @State selectedIndex: number = -1
  LeftScroller: Scroller = new Scroller()
  RightScroller: Scroller = new Scroller()
  @State itemHeight: number = 406
  @State singleItemHeight: number = 101.75
  @State indexNumber: number = 0
  @State selectedCategoryIndex: number = -1

  @Builder
  myHearderBuilding(classifyName: string) {
    Flex({
      direction: FlexDirection.Column
    }) {
      Text(classifyName)
        .fontSize(16)
    }
    .backgroundColor(Color.Pink)
    .width("100%")
    .padding(10)
  }

  private myScrollerToIndex(index: number, isLeft: boolean) {
    this.selectedCategoryIndex = index
    if (isLeft) {
      this.LeftScroller.scrollToIndex(index)
    } else {
      this.RightScroller.scrollToIndex(index)
    }
  }

  build() {
    Flex({
      direction: FlexDirection.Row,
    }) {
      List({ scroller: this.LeftScroller }) {
        ForEach(goods, (myitem: GoodCategory, index: number) => {
          ListItem() {
            Text(myitem.classifyName)
              .fontSize(16)
              .padding(10)
              .backgroundColor(this.selectedCategoryIndex == index ? Color.Red : Color.Yellow)
              .onClick(() => {
                this.newitem = myitem.courseList
                this.selectedCategoryIndex = index
                // const IndexNumber = calculateStartIndex(index)
                this.RightScroller.scrollToIndex(index)
              })
          }
        })
      }.width('25%')
      .height("100%")
      .backgroundColor(Color.Gray)



      List({ scroller: this.RightScroller }) {
        ForEach(goods, (item: GoodCategory, CategoryIndex: number) => {
          ListItemGroup({
            header: this.myHearderBuilding(item.classifyName),
            space: 10,
          }) {
            ForEach(item.courseList, (newitem: Goods) => {
                RightSideBar({ myitem: newitem })
            })
          }
        })
      }.onScrollIndex((index: number) => {
        this.myScrollerToIndex(index, true)
      })
    }
  }
}


function calculateStartIndex(catIndex: number): number {
  let startIndex = 0;
  for (let i = 0; i < catIndex; i++) {
    startIndex += goods[i].courseList.length;
    startIndex += 1;
  }
  return startIndex;
}

