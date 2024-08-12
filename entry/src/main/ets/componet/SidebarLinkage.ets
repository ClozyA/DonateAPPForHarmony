import router from '@ohos.router';
import GoodCategory from '../data/GoodCategory';
import Goods from '../data/Goods';

@Entry
@Component
export struct SidebarItem {
  @Prop isSelected: boolean = false;
  classifyName?: string;
  onClickAction = () => {
  }

  build() {
    Text(this.classifyName)
      .fontSize(14)
      .fontColor(this.isSelected ? '#182431' : '#99182431')
      .fontFamily(this.isSelected ? 'HarmonyHeiTi-Medium' : 'HarmonyHeiTi')
      .fontWeight(this.isSelected ? 500 : 400)
      .textAlign(TextAlign.Center)
      .backgroundColor(this.isSelected ? '#F1F3F5' : '')
      .width('100%')
      .height(56)
      .onClick(this.onClickAction)
  }
}

@Component
export default struct SidebarLinkage {
  @BuilderParam CourseItem: (item: GoodCategory) => void;
  @Prop dataList: Array<GoodCategory> = [];
  @Prop requestSuccess: boolean = false;
  @State currentIndex: number = 0; // selected classify index.
  private sidebarScroller: Scroller = new Scroller();
  private scroller: Scroller = new Scroller();

  @Builder
  blcokHeader(classifyName: string) {
    Row() {
      Text(classifyName)
        .fontSize(18)
        .fontColor('#182431')
        .fontFamily('HarmonyHeiTi-Medium')
        .fontWeight(500)
    }
    .padding({ left: 8 })
    .height(56)
    .width('100%')
    .backgroundColor('#F1F3F5')
  }

  scrollIndexChangeAction(index: number, isClassify: boolean) {
    if (this.currentIndex !== index) {
      // change the classify status.
      this.currentIndex = index;
      if (isClassify) {
        // scroll the course scroll.
        this.scroller.scrollToIndex(index);
      } else {
        // scroll the classify scroll.
        this.sidebarScroller.scrollToIndex(index);
      }
    }
  }

  build() {
    Row() {
      if (this.requestSuccess) {
        List({ scroller: this.sidebarScroller }) {
          ForEach(this.dataList, (item: GoodCategory, index?: number) => {
            ListItem() {
              SidebarItem({
                classifyName: item.classifyName,
                isSelected: this.currentIndex === index,
                onClickAction: () => {
                  if (index !== undefined) {
                    this.scrollIndexChangeAction(index, true);
                  }
                }
              })
            }
          }, (item: GoodCategory) => item.classifyName + this.currentIndex)
        }
        .height('100%')
        .width(100)
        .backgroundColor('#0D182431')
        .scrollBar(BarState.Off)

        List({ scroller: this.scroller }) {
          ForEach(this.dataList, (item: GoodCategory) => {
            ListItemGroup({
              header: this.blcokHeader(item.classifyName),
              space: 12
            }) {
              ForEach(item.courseList, (courseItem: Goods) => {
                ListItem() {
                  // this.CourseItem({ itemStr: JSON.stringify(courseItem) })
                  this.CourseItem(item)

                }
                //跳转商品详情
                .onClick(() => {
                  console.info(JSON.stringify(courseItem))
                  router.pushUrl({
                    url: 'pages/detail',
                    params: {
                      "good": JSON.stringify(courseItem)
                    }
                  })
                })
              }, (courseItem: Goods) => `${courseItem.courseId}`)
            }
          }, (item: GoodCategory) => `${item.classifyId}`)
        }
        .padding({ left: 8, right: 12 })
        .sticky(StickyStyle.Header)
        .layoutWeight(1)
        .edgeEffect(EdgeEffect.None)
        .onScrollIndex((start: number) => this.scrollIndexChangeAction(start, false))
      } else {
        Text('loading...')
          .fontFamily('HarmonyHeiTi-Medium')
          .textAlign(TextAlign.Center)
          .fontSize(18)
          .height('100%')
          .width('100%')
      }
    }
    .backgroundColor('#F1F3F5')
  }
}
