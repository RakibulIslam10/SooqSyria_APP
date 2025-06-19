part of '../screen/login_screen.dart';


class InputWidget extends GetView<LoginController> {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      PrimaryInputWidget(
        label: Strings.yourEmail,
        controller: controller.emailController,
        hintText: Strings.enterYourEmail,
      ),
      Sizes.height.betweenInputBox,
      PrimaryInputWidget(
        label: Strings.password,
        controller: controller.passwordController,
        hintText: Strings.password,
        isPasswordField: true,
      ),
      Sizes.height.betweenInputBox,
      Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          TextWidget(
            fontSize: Dimensions.titleMedium * 0.9,
            fontWeight: FontWeight.bold,
            Strings.wrongPassword,
          ),
          TextWidget(
            onTap: () => Get.toNamed(Routes.forgotPasswordScreen),
            Strings.forgotPassword,
            fontSize: Dimensions.titleMedium * 0.9,
            color: Colors.black.withAlpha(939),
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
      Sizes.height.betweenInputBox,
    ],);
  }
}
