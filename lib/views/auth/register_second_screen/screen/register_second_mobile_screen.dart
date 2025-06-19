part of 'register_second_screen.dart';

class RegisterSecondMobileScreen extends GetView<RegisterSecondController> {
  const RegisterSecondMobileScreen({super.key});

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
                Get.toNamed(Routes.otpScreen);
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
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.back(),
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
        child: ListView(
          children: [
            RegisterInputWidget(
              label: Strings.city,
              controller: controller.cityController,
              hintText: Strings.city,
            ),
            Sizes.height.betweenInputBox,
            RegisterInputWidget(
              label: Strings.phoneNumber,
              controller: controller.phoneNumberController,
              hintText: Strings.phoneNumber,
            ),
            Sizes.height.betweenInputBox,
            RegisterInputWidget(
              label: Strings.mail,
              controller: controller.mailController,
              hintText: Strings.mail,
            ),
            Sizes.height.betweenInputBox,
            RegisterInputWidget(
              prefixIcon: Icon(CupertinoIcons.lock),
              isPasswordField: true,
              label: Strings.password,
              controller: controller.passwordController,
              hintText: '*********',
            ),
            Sizes.height.betweenInputBox,
            RegisterInputWidget(
              prefixIcon: Icon(CupertinoIcons.lock),
              isPasswordField: true,
              label: Strings.confirmPassword,
              controller: controller.confirmPassController,
              hintText: '*************',
            ),
            Sizes.height.betweenInputBox,
          ],
        ),
      ),
    );
  }
}
