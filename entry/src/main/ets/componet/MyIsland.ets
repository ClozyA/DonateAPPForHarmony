import GoodCategory from '../data/GoodCategory'
import Goods from '../data/Goods'
import cart from '../mockjs/cart'
import CartSideBar from './CartSideBar'
import articles from '../mockjs/myarticle'
import ArticleItem from '../data/ArticleItem'
import MyArticle from './MyArticle'
import AnalyseComponent from './AnalyseComponent'

@Entry
@Component
export default struct MyIsland {
  //定义一个捐款金额的变量
  @State money: string = ""
  //定义一个子捐物的变量
  @State object: string = ""
  //
  private rightScroller: Scroller = new Scroller()
  private article_scroller: Scroller = new Scroller()

  build() {
    Flex({ direction: FlexDirection.Column }) {
      Text("捐助相关文章推荐")
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .width("100%")
        .height(60)
        .backgroundColor(Color.Yellow)
        .padding(10)
      List({ scroller: this.article_scroller }) {
        ForEach(articles, (item: ArticleItem) => {
          ListItem() {
            MyArticle({ article: item })
          }
        })
      }.margin({
        bottom:20
      })

      Text("你可能感兴趣的")
        .fontSize(18)
        .width("100%")
        .fontWeight(FontWeight.Bold)
        .height(60)
        .backgroundColor(Color.Yellow)
        .padding(10)
      List({ scroller: this.rightScroller }) {

        ForEach(cart, (newitem: Goods) => {
          ListItem() {
            CartSideBar({ myitem: newitem, donationAmount: this.money, donationItem: this.object })
          }
        })
      }

      AnalyseComponent({ donationAmount: this.money, donationItem: this.object })

    }
  }
}