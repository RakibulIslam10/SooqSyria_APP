part of 'register_screen.dart';

class RegisterMobileScreen extends GetView<RegisterController> {
  const RegisterMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          mainAxisSize: mainMin,
          children: [
            PrimaryButton(
              title: Strings.continuee,
              onPressed: () {
                Get.toNamed(Routes.registerSecondScreen);
              },
            ),
            Sizes.height.v5,
            Row(
              mainAxisAlignment: mainCenter,
              children: [
                TextWidget(
                  Strings.alreadyHaveAnAccount,
                  fontSize: Dimensions.titleSmall * 0.9,
                  color: CustomColor.grayColor,
                ),
                TextWidget(
                  Strings.signIn,
                  fontSize: Dimensions.titleSmall * 0.9,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.primary,
                ),
              ],
            ),
            Sizes.height.v10,
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Get.back(),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        backgroundColor: CustomColor.whiteColor,
        title: Column(
          crossAxisAlignment: crossStart,
          children: [
            TextWidget(Strings.createAccount, fontWeight: FontWeight.bold),
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                top: Dimensions.verticalSize * 0.1,
              ),
              Strings.registerToGetStarted,
              color: CustomColor.secondary,
              fontSize: Dimensions.titleSmall * 0.9,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(children: [Sizes.height.v40, RegisterFirstField()]),
      ),
    );
  }
}
