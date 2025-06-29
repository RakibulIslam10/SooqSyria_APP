part of '../screen/aaccount_details_screen.dart';

class NoListingWidget extends GetView<AaccountDetailsController> {
  const NoListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainCenter,
      crossAxisAlignment: crossCenter,
      children: [
        Sizes.height.v40,
        Sizes.height.v40,
        Sizes.height.v40,
        TextWidget(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: Dimensions.verticalSize * 0.2,
          ),
          Strings.noListing,
          fontWeight: FontWeight.w900,
        ),
        TextWidget(
          Strings.clickHereToPostYourAdImmediately,
          fontSize: Dimensions.titleSmall * 0.9,
          fontWeight: FontWeight.bold,
        ),

        Container(
          margin: EdgeInsetsGeometry.symmetric(
            vertical: Dimensions.verticalSize ,
          ),
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: Dimensions.defaultHorizontalSize,
            vertical: Dimensions.verticalSize * 0.25,
          ),
          decoration: BoxDecoration(
            color: CustomColor.primary,
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
          child: TextWidget(Strings.postANAdd, color: CustomColor.whiteColor),
        ),
      ],
    );
  }
}
