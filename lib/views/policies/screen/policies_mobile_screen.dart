part of 'policies_screen.dart';

class PoliciesMobileScreen extends GetView<PoliciesController> {
  const PoliciesMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.policies,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
              vertical: Dimensions.verticalSize,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: CustomColor.whiteShade),
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
              vertical: Dimensions.verticalSize * 0.6,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.about_usScreen),
                  child: Row(
                    mainAxisAlignment: mainSpaceBet,
                    children: [
                      TextWidget(Strings.aboutUS),
                      Padding(
                        padding: EdgeInsets.only(
                          right: Dimensions.defaultHorizontalSize,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: Dimensions.iconSizeDefault,
                        ),
                      ),
                    ],
                  ),
                ),
                Sizes.height.v15,
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.privacy_policyScreen),
                  child: Row(
                    mainAxisAlignment: mainSpaceBet,
                    children: [
                      TextWidget(Strings.privacyPolicy),
                      Padding(
                        padding: EdgeInsets.only(
                          right: Dimensions.defaultHorizontalSize,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: Dimensions.iconSizeDefault,
                        ),
                      ),
                    ],
                  ),
                ),
                Sizes.height.v15,
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.terms_conditionScreen),
                  child: Row(
                    mainAxisAlignment: mainSpaceBet,
                    children: [
                      TextWidget(Strings.termsCondition),
                      Padding(
                        padding: EdgeInsets.only(
                          right: Dimensions.defaultHorizontalSize,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: Dimensions.iconSizeDefault,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
