part of 'reset_password_screen.dart';

class ResetPasswordMobileScreen extends GetView<ResetPasswordController> {
  const ResetPasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        '',
        backgroundColor: CustomColor.whiteColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: ListView(
          children: [
            Sizes.height.v20,
            HeadingText(),
            Field(),
            SendOtpButton(),
          ],
        ),
      ),
    );
  }
}
