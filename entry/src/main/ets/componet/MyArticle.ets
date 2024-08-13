import ArticleItem from '../data/ArticleItem'

// @Entry
@Component
export default struct MyArticle {
  @Prop article: ArticleItem
  build() {
    Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.Center }) {
      Row() {
        Image(this.article.icon)
          .width(100)
          .height(100)
        Flex({direction: FlexDirection.Column}){
          Flex({direction:FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween}){
            Text(this.article.mytxt)
              .fontSize(20)
            Text("作者："+this.article.author)
              .fontSize(16)

          }
          .width(200)
          .margin({bottom: 30})

          Flex({direction:FlexDirection.Row}){
            Text("推荐指数")
            ForEach(new Array<number>(this.article.recommend).fill(1), (item:number) => {
              Image($r("app.media.IosStar"))
                .width(20)
                .height(20)
                .fillColor(Color.Red)
            })
            ForEach(new Array<number>(5-this.article.recommend).fill(1), (item:number) => {
              Image($r("app.media.IosStar"))
                .width(20)
                .height(20)
                .fillColor(Color.Red)
            })

          }
        }

      }
      .height(100)
      .width("90%")
      .margin({bottom:10,top:10})
      .border({width:({bottom:2})})
    }

  }
}