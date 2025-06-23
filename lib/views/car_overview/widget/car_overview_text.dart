part of '../screen/car_overview_screen.dart';

class CarOverviewText extends GetView<CarOverviewController> {
  const CarOverviewText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(Strings.carOverview, fontWeight: FontWeight.bold),
        Sizes.height.v15,
        overviewWidget(Strings.bodyType, "SUV"),
        overviewWidget(Strings.exteriorColor, "WHITE"),
        overviewWidget(Strings.doors, "5+ doors"),
        overviewWidget(Strings.interioColor, "Brown "),
        overviewWidget(Strings.seatingCapacity, "5 Seater "),
        Padding(
          padding: EdgeInsets.only(bottom: Dimensions.paddingSize * 0.4),
          child: TextWidget(
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
                        TextWidget(
                          Strings.carOverview,
                          fontWeight: FontWeight.bold,
                        ),
                        Divider(color: CustomColor.whiteShadeBlue),
                        carOverViewALlData(Strings.bodyType, "SUV"),
                        carOverViewALlData(Strings.exteriorColor, "WHITE"),
                        carOverViewALlData(Strings.doors, "5+ doors"),
                        carOverViewALlData(Strings.interioColor, "Brown "),
                        carOverViewALlData(
                          Strings.seatingCapacity,
                          "5 Seater ",
                        ),
                        carOverViewALlData(Strings.fuelType, "Hybrid"),
                        carOverViewALlData(Strings.engineCapacity, "1500-2000"),
                        carOverViewALlData(Strings.horsepower, "100-200HP"),
                        carOverViewALlData(Strings.noOfCylinders, "5"),
                        carOverViewALlData(
                          Strings.transmissionType,
                          "Automatic Trs",
                        ),
                        carOverViewALlData(Strings.warranty, "Does Not Apply"),
                        carOverViewALlData(Strings.targetMarket, "USA"),
                        carOverViewALlData(Strings.year, "2025"),
                        carOverViewALlData(Strings.kilimeters, "2"),
                        carOverViewALlData(
                          Strings.regionalSpecs,
                          "chinese Spece",
                        ),
                        carOverViewALlData(Strings.sellerType, "Dealer"),
                        carOverViewALlData(Strings.steering, "Dealer"),
                      ],
                    ),
                  );
                },
              );
            },
            Strings.seeMore,
            color: CustomColor.primary,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  overviewWidget(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.2),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(title, fontSize: Dimensions.titleSmall),
          TextWidget(
            textAlign: TextAlign.start,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize * 3,
            ),
            value,
            fontSize: Dimensions.titleSmall,
          ),
        ],
      ),
    );
  }

  carOverViewALlData(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.2),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
            ),
            child: Row(
              mainAxisAlignment: mainSpaceBet,
              children: [
                TextWidget(title, fontSize: Dimensions.titleSmall),
                TextWidget(value, fontSize: Dimensions.titleSmall),
              ],
            ),
          ),
          Divider(color: CustomColor.whiteShadeBlue),
        ],
      ),
    );
  }
}
