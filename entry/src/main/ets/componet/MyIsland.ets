import Goods from '../data/Goods'
import cart from '../mockjs/cart'
import CarSideBar from './CarSideBar'


@Entry
@Component
struct MyIsland {
  private right_controller: Scroller = new Scroller()

  build() {
    List({
      scroller: this.right_controller
    }) {
      ForEach(cart, (newitem: Goods) => {
        ListItem() {
          CarSideBar({
            myitem: newitem
          })
        }
      })
    }
  }
}