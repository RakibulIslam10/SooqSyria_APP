part of 'account_settings_screen.dart';

class AccountSettingsMobileScreen extends GetView<AccountSettingsController> {
  const AccountSettingsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.accountSetting,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: ListView(
          children: [
            PrimaryInputWidget(
              label: Strings.firstName,
              controller: controller.firstNameController,
              hintText: Strings.firstName,
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              label: Strings.lastName,
              controller: controller.lastNameController,
              hintText: Strings.lastName,
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              label: Strings.dateOfBirth,
              controller: TextEditingController(),
              hintText: "MM/DD/YY",
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              label: Strings.gender,
              controller: controller.genderController,
              hintText: "Male",
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              label: Strings.email,
              controller: controller.emailController,
              hintText: Strings.email,
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              label: Strings.phoneNumber,
              controller: controller.phoneNumberController,
              hintText: Strings.phoneNumber,
            ),

            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              label: Strings.password,
              controller: controller.passwordController,
              hintText: Strings.password,
            ),
            Sizes.height.betweenInputBox,
            Sizes.height.betweenInputBox,
            PrimaryButton(title: Strings.saveChange, onPressed: () {}),
            Sizes.height.betweenInputBox,
            Sizes.height.betweenInputBox,
            Sizes.height.betweenInputBox,
          ],
        ),
      ),
    );
  }
}
