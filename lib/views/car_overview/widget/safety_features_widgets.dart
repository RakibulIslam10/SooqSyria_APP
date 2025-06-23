part of '../screen/car_overview_screen.dart';

class SafetyFeaturesWidgets extends GetView<CarOverviewController> {
  const SafetyFeaturesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        safetyFeatures([
          "ABS (Anti-lock Braking System)",
          "ESP (Electronic Stability Program)",
          "Airbags (front, side, curtain)",
          "Lane keeping assist",
          "Blind spot monitoring",
        ]),
        SafetyFeaturesBottomWidget(),
      ],
    );
  }
}

safetyFeatures(List<String> features) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(Strings.features, fontWeight: FontWeight.bold),
      TextWidget(
        padding: EdgeInsetsGeometry.only(top: Dimensions.verticalSize * 0.2),
        Strings.safetyFeatures,
        fontWeight: FontWeight.bold,
        color: CustomColor.primary,
      ),
      Sizes.height.v5,
      ...features.map(
        (feature) => Padding(
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.1,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColor.primary,
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                ),
                padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.1),
                child: Icon(
                  Icons.check,
                  size: Dimensions.iconSizeSmall * 1.5,
                  color: CustomColor.whiteColor,
                ),
              ),
              TextWidget(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: Dimensions.defaultHorizontalSize * 0.4,
                ),
                feature,
                fontSize: Dimensions.titleSmall,
                color: CustomColor.grayColor,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
