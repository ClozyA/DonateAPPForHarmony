import { router } from '@kit.ArkUI'

@Entry
@Component
struct Register {
  @State username: string = ''
  @State password: string = ''
  @State confirmPassword: string = ''

  build() {
    Flex({
      direction: FlexDirection.Column
    }) {
      Flex() {
        Flex({
          direction: FlexDirection.Column,
          alignItems: ItemAlign.Center,
          justifyContent: FlexAlign.Center
        }) {
          Image($r("app.media.user2")).width('100')
            .height('100')
            .margin({
              top: 20
            })
          Text($r("app.string.MyAppUserName"))
            .fontColor(Color.White)
            .fontSize(20)
            .margin({
              top: 20
            })
        }.width("100%")
      }.width('100%')
      .height('250')
      .backgroundColor("#0179c2")
      .borderRadius({
        bottomLeft: 160,
        bottomRight: 160
      })

      Flex({
        direction: FlexDirection.Row
      }) {
        Image($r("app.media.user2")).width('40')
          .height('40')
          .margin({
            top: 50,
            left: 30
          })
        TextInput({
          placeholder: $r("app.string.UserNamePlaceholder")
        })
          .margin({
            top: 50,
            left: 10,
            right: 50
          })
          .width('90%')
          .borderWidth(2)
          .borderColor(Color.Gray)
          .borderRadius(10)
          .fontSize(20)
          .onChange((value) => {
            this.username = value
          })
      }

      Flex({
        direction: FlexDirection.Row
      }) {
        Image($r("app.media.lock")).width('40')
          .height('40')
          .margin({
            top: 30,
            left: 30
          })
        TextInput({
          placeholder: $r("app.string.PasswordPlaceholder")
        })
          .type(InputType.Password)
          .margin({
            top: 30,
            left: 10,
            right: 50
          })
          .width('90%')
          .borderWidth(2)
          .borderColor(Color.Gray)
          .borderRadius(10)
          .fontSize(20)
          .onChange((value) => {
            this.password = value
          })
      }

      Flex({
        direction: FlexDirection.Row
      }) {
        Image($r("app.media.lock")).width('40')
          .height('40')
          .margin({
            top: 30,
            left: 30
          })
        TextInput({
          placeholder: $r("app.string.PasswordConfirmPlaceholder")
        })
          .type(InputType.Password)
          .margin({
            top: 30,
            left: 10,
            right: 50
          })
          .width('90%')
          .borderWidth(2)
          .borderColor(Color.Gray)
          .borderRadius(10)
          .fontSize(20)
          .onChange((value) => {
            this.confirmPassword = value
          })
      }


      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center
      }) {
        Button($r("app.string.RegisterButtonText"))
          .width('60%')
          .height('60')
          .margin({
            top: 30
          })
          .backgroundColor("#0179c2")
          .fontSize(20)
          .fontColor(Color.White)
          .borderRadius(10)
          .onClick(() => {
            if (!this.username || !this.password || !this.confirmPassword) {
              AlertDialog.show({
                message: $r("app.string.EmptyUsernameOrPasswordInput")
              })
            } else {
              if (this.password !== this.confirmPassword) {
                AlertDialog.show({
                  message: $r("app.string.PasswordNotMatch")
                })
              } else {
                AlertDialog.show({
                  message: $r("app.string.RegisterSuccess")
                })
                router.pushUrl({
                  url: 'pages/Login'

                })
              }
            }
          }
          )
      }

      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center
      }) {

        Text($r("app.string.ReturnToLogin"))
          .fontSize(15)
          .fontColor(Color.Gray)
          .margin({
            top: 20,
          })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Login'
            })
          })
      }.width("100%")


    }
  }
}