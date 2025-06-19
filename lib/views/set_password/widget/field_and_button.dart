part of '../screen/set_password_screen.dart';

class FieldAndButton extends GetView<SetPasswordController> {
  const FieldAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sizes.height.betweenInputBox,
        PrimaryInputWidget(
          prefixIcon: Icon(CupertinoIcons.lock),
          isPasswordField: true,
          label: Strings.password,
          controller: controller.passwordController,
          hintText: Strings.enterYourNewPass,
        ),
        Sizes.height.betweenInputBox,
        PrimaryInputWidget(
          prefixIcon: Icon(CupertinoIcons.lock),
          isPasswordField: true,
          label: Strings.confirmPassword,
          controller: controller.confirmPassController,
          hintText: Strings.reenterYourNewPass,
        ),
        Sizes.height.betweenInputBox,
        Sizes.height.betweenInputBox,
        PrimaryButton(
          title: Strings.updatePassword,
          onPressed: () => Get.toNamed(Routes.loginScreen),
        ),
      ],
    );
  }
}
