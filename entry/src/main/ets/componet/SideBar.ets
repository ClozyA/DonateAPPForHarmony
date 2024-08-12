import GoodCategory from '../data/GoodCategory'
import Goods from '../data/Goods'

@Component
export default struct SideBar {
  @Prop myitem: GoodCategory
  @State mycolor: Color = Color.Yellow
  @Link myitemlist: Array<Goods>

  build() {
    Text(this.myitem.classifyName)
      .height(50)
      .padding(10)
      .backgroundColor(this.mycolor)
      .onClick(() => {
        console.log('当前颜色（前）：'+this.mycolor)
        this.mycolor=(this.mycolor==Color.Yellow?Color.Red:Color.Yellow)
        console.log('当前颜色（后）：'+this.mycolor)
        this.myitemlist=this.myitem.courseList
      })
  }
}