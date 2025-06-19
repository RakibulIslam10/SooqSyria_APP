part of 'reset_password_otp_screen.dart';

class ResetPasswordOtpMobileScreen extends GetView<ResetPasswordOtpController> {
  const ResetPasswordOtpMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbarSize: Dimensions.appBarHeight * 2,
        toolbarHeight: Dimensions.appBarHeight * 2,
        '',
        backgroundColor: CustomColor.whiteColor,
        leading: BackButtonWidget(
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            HeadingWidget(),
            OtpFieldBox(),
            VerifyButtonWidget(),
            ResendTextWidget(),
          ],
        ),
      ),
    );
  }
}
