part of '../screen/reset_password_screen.dart';

class HeadingText extends GetView<ResetPasswordController> {
  const HeadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsetsGeometry.only(
            bottom: Dimensions.verticalSize * 0.2,
          ),
          Strings.forgotPassword,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleLarge * 0.8,
        ),
        TextWidget(
          Strings.forgotPassdesc,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleSmall,
        ),
        Sizes.height.v20,
      ],
    );
  }
}
