part of '../screen/car_overview_screen.dart';

class SafetyFeaturesBottomWidget extends GetView<CarOverviewController> {
  const SafetyFeaturesBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          isScrollControlled: true,
          builder: (context) {
            final height = MediaQuery.of(context).size.height * 0.92;
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius),
                color: CustomColor.whiteColor,
              ),
              height: height,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: Dimensions.defaultHorizontalSize,
                vertical: Dimensions.verticalSize,
              ),
              child: ListView(
                children: [
                  TextWidget(Strings.features, fontWeight: FontWeight.bold),
                  Divider(color: CustomColor.whiteShadeBlue),
                  moreFeaturesShow([
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                    "Blind spot monitoring",
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                    "Blind spot monitoring",
                  ], Strings.safetyFeatures),
                  moreFeaturesShow([
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                    "Blind spot monitoring",
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                    "Blind spot monitoring",
                  ], Strings.interioColor),
                  moreFeaturesShow([
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                    "Blind spot monitoring",
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                    "Blind spot monitoring",
                  ], Strings.informationAndTechnology),
                  moreFeaturesShow([
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                  ], Strings.driverAssistanceFeatures),
                  moreFeaturesShow([
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                  ], Strings.exteriorFeatures),
                  moreFeaturesShow([
                    "ABS (Anti-lock Braking System)",
                    "ESP (Electronic Stability Program)",
                    "Airbags (front, side, curtain)",
                    "Lane keeping assist",
                  ], Strings.otherOption),
                ],
              ),
            );
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.4),
        child: TextWidget(
          controller.showMore.value ? Strings.showLess : Strings.seeMore,
          color: CustomColor.primary,
          fontSize: Dimensions.titleSmall,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

moreFeaturesShow(List<String> features, String heading) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(
        padding: EdgeInsets.only(top: Dimensions.verticalSize * 0.2),
        heading,
        fontWeight: FontWeight.bold,
        color: CustomColor.primary,
      ),
      SizedBox(height: Dimensions.paddingSize * 0.2),
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
                padding: EdgeInsets.all(Dimensions.paddingSize * 0.04),
                child: Icon(
                  Icons.check,
                  size: Dimensions.iconSizeSmall * 1.4,
                  color: CustomColor.whiteColor,
                ),
              ),
              TextWidget(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.defaultHorizontalSize * 0.4,
                ),
                feature,
                fontSize: Dimensions.titleSmall * 0.9,
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
