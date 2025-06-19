part of '../screen/login_screen.dart';

class DoNotHaveAnAccount extends StatelessWidget {
  const DoNotHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        TextWidget("Don’t have an account? ", fontWeight: FontWeight.bold),
        TextWidget(
          onTap: () => Get.toNamed(Routes.registerScreen),
          "Sign up",
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
