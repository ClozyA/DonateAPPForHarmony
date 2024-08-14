// @Entry
import MyCategory from '../data/MyCategory'
import MyNews from '../data/MyNews'
import category from '../mockjs/category_data'
import news from '../mockjs/news'
import recommend from '../mockjs/recommend'

@Component
export default struct IndexComponet {
  build() {
    Scroll() {
      Flex(
        {
          direction: FlexDirection.Column
        }
      ) {
        Swiper() {
          Image($r("app.media.banner1"))
            .width('100%')
            .height(200)
            .objectFit(ImageFit.Contain)
          Image($r("app.media.banner2"))
            .width('100%')
            .height(200)
            .objectFit(ImageFit.Contain)
          Image($r("app.media.banner3"))
            .width('100%')
            .height(200)
            .objectFit(ImageFit.Contain)
        }
        .margin({
          top: -40
        })
        .autoPlay(true)
        .interval(3000)

        //分类导航
        Flex({
          direction: FlexDirection.Row, // 水平方向排列
          wrap: FlexWrap.Wrap, // 允许换行
        }) {
          ForEach(category, (item: MyCategory) => {
            Column() {
              Image(item.icon)
                .width("22%")
                .height(75)
                .margin({
                  bottom: 10
                })
              Text(item.mytxt)
                .margin({
                  bottom: 10
                })
            }.margin({
              left: 7,
              right: 5
            })
          })
        }


        Flex({
          direction: FlexDirection.Row, // 水平方向排列
          wrap: FlexWrap.Wrap,

        }) {
          ForEach(news, (item: MyNews) => {
            Column() {
              //俩横向内容
              Row() {
                Image(item.icon)
                  .width(70)
                  .height(70)
                  .margin({
                    bottom: 10
                  })
                Column() {
                  Text(item.mytitle)
                    .fontSize(16)
                    .fontColor(Color.Black)
                    .fontWeight(FontWeight.Bold)
                    .margin({
                      bottom: 10
                    })
                  Text(item.mysubtitle)
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
              }.margin({
                left: 5,
                top: 10
              })
            }
          })
        }.width("98%")
        .border({
          width: 1,
          style: BorderStyle.Solid,
          color: Color.Gray
        })
        .borderRadius(15)
        .margin({
          left: 5,
          right: 5
        })

        Flex({
          direction: FlexDirection.Row, // 水平方向排列
          justifyContent: FlexAlign.SpaceBetween,
          alignItems: ItemAlign.Center
        }) {
          Image($r("app.media.fire"))
            .width(40)
            .height(40)
          Text($r("app.string.hot_text"))
            .fontColor(Color.Red)
        }
        .backgroundColor(Color.Yellow)
        .margin({
          top: 10
        })

        // .padding(10)

        Flex({
          direction: FlexDirection.Row, // 水平方向排列
          wrap: FlexWrap.Wrap,
        }) {
          ForEach(recommend, (item: MyNews) => {
            Column() {
              Image(item.icon)
                .width(100)
                .height(100)
                .margin({
                  bottom: 10
                })
              Text(item.mytitle)
                .width("40%")
            }.margin({
              left: 20,
              top: 10,
              bottom: 10,
              right: 5
            })
            .height(180)
            .border({
              width: 1,
              style: BorderStyle.Dotted,
              color: Color.Gray
            })
            .padding(10)

          })
        }

        Flex({
          direction: FlexDirection.Row,
          justifyContent: FlexAlign.SpaceBetween,
          alignItems: ItemAlign.Center
        }) {
          Image($r("app.media.fire"))
            .width(40)
            .height(40)
          Text($r("app.string.recent_text"))
            .fontColor(Color.Red)
        }
        .backgroundColor(Color.Yellow)
        .margin({
          top: 20
        })
        .padding(10)


        Flex({
          direction: FlexDirection.Row, // 水平方向排列
          wrap: FlexWrap.Wrap,
        }) {
          ForEach(recommend, (item: MyNews) => {
            Column() {
              Image(item.icon)
                .width(100)
                .height(100)
                .margin({
                  bottom: 10
                })
              Text(item.mytitle)
                .width("40%")
            }.margin({
              left: 20,
            })
          })
        }
      }

    }
  }
}


