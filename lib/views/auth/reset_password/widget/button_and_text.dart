part of '../screen/reset_password_screen.dart';

class SendOtpButton extends GetView<ResetPasswordController> {
  const SendOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.5,
          ),
          child: PrimaryButton(
            title: Strings.resetPassword,
            onPressed: () {
              Get.toNamed(Routes.forgotPasswordOtpScreen);
            },
          ),
        ),
      ],
    );
  }
}
