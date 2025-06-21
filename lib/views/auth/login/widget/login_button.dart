part of '../screen/login_screen.dart'; // or better:

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryButton(
          title: Strings.login,
          onPressed: () {
            Get.toNamed(Routes.navigationScreen);
          },
        ),
        Sizes.height.betweenInputBox,
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: Dimensions.widthSize * 5),
                child: Divider(
                  thickness: 2,
                  color: Colors.black.withAlpha(939),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Dimensions.defaultHorizontalSize),
              child: TextWidget(
                "Or",
                fontWeight: FontWeight.bold,
                color: Colors.black.withAlpha(939),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: Dimensions.widthSize * 5),
                child: Divider(
                  thickness: 2,
                  color: Colors.black.withAlpha(939),
                ),
              ),
            ),
          ],
        ),
        Sizes.height.betweenInputBox,
      ],
    );
  }
}
