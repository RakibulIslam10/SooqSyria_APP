part of '../screen/login_screen.dart';

class LoginOptionSection extends StatelessWidget {
  const LoginOptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Container(
        height: Dimensions.inputBoxHeight * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor.borderColor, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius),
          ),
        ),
        child: Row(
          mainAxisAlignment: mainCenter,
          children: [
            Image.asset('assets/logo/fb.png', height: 24, width: 24),
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                left: Dimensions.widthSize,
              ),
              Strings.loginWithFacebook,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      Sizes.height.betweenInputBox,

      Container(
        height: Dimensions.inputBoxHeight * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor.borderColor, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius),
          ),
        ),
        child: Row(
          mainAxisAlignment: mainCenter,
          children: [
            Image.asset(
              'assets/logo/google.png',
              height: 24,
              width: 24,
            ),
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                left: Dimensions.widthSize,
              ),
              Strings.loginWithFacebook,
              fontWeight: FontWeight.bold,
            ),

            // ),
          ],
        ),
      ),
      Sizes.height.betweenInputBox,

      Container(
        height: Dimensions.inputBoxHeight * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor.borderColor, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius),
          ),
        ),
        child: Row(
          mainAxisAlignment: mainCenter,
          children: [
            Image.asset('assets/logo/Apple.png', height: 24, width: 24),
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                left: Dimensions.widthSize,
              ),
              Strings.loginWithFacebook,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      Sizes.height.betweenInputBox,

      Sizes.height.v40,
    ],);
  }
}
