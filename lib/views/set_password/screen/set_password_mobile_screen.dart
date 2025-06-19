part of 'set_password_screen.dart';

class SetPasswordMobileScreen extends GetView<SetPasswordController> {
  const SetPasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbarSize: Dimensions.appBarHeight * 2,
        toolbarHeight: Dimensions.appBarHeight * 2,
        '',
        backgroundColor: CustomColor.whiteColor,
        leading: BackButtonWidget(onTap: () => Get.back()),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                bottom: Dimensions.verticalSize * 0.2,
              ),
              Strings.setANewPassword,
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.titleLarge * 0.8,
            ),
            TextWidget(
              Strings.setANewPasswordDes,
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.titleSmall,
            ),
            Sizes.height.v20,
            FieldAndButton()
          ],
        ),
      ),
    );
  }
}
