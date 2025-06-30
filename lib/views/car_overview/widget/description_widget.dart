part of '../screen/car_overview_screen.dart';

class DescriptionWidget extends GetView<CarOverviewController> {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsetsGeometry.only(
            bottom: Dimensions.verticalSize * 0.2,
          ),
          Strings.description,
          fontWeight: FontWeight.bold,
        ),

        TextWidget(
          padding: EdgeInsetsGeometry.only(
            bottom: Dimensions.verticalSize * 0.2,
          ),
          "Byd Destroyer 05 2025 | 55km Range | chinese specs\n"
          "Byd Destroyer 05 Dm-i Basic Option * Year Of the Model - 2024 * Interior White * 0 Mileage * Chinese Imported * Recently Arrived",
          fontSize: Dimensions.titleSmall * 0.9,
          color: CustomColor.grayColor,
        ),

        Padding(
          padding: Dimensions.verticalSize.edgeVertical * 0.25,
          child: Divider(color: CustomColor.whiteShade, height: 2),
        ),
        TextWidget(
          padding: EdgeInsetsGeometry.only(
            bottom: Dimensions.verticalSize * 0.2,
          ),
          "Follow us on Instagram for more luxury cars. Just click the link:\nhttps://www.instagram.com/chinaskymotors/",
          fontSize: Dimensions.titleSmall * 0.9,
          color: CustomColor.grayColor,
        ),
        TextWidget(
          onTap: () {
            _descriptionBottomSheetInfo(context);
          },
          Strings.readMore,
          color: CustomColor.primary,
          fontSize: Dimensions.titleSmall,
          fontWeight: FontWeight.w600,
        ),

        TextWidget(
          padding: Dimensions.verticalSize.edgeVertical * 0.25,
          "Published on : 15 may",
          fontSize: Dimensions.titleSmall * 0.9,
          color: CustomColor.grayColor,
        ),
      ],
    );
  }

  Future<dynamic> _descriptionBottomSheetInfo(BuildContext context) {
    return showModalBottomSheet(
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
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              Padding(
                padding:  EdgeInsetsGeometry.only(bottom: Dimensions.verticalSize * 0.2),
                child: Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    TextWidget(
                      Strings.description,
                      fontWeight: FontWeight.bold,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              Sizes.height.v10,
              TextWidget(
                // Entire content as ONE string
                "Byd Destroyer 05 2025 | 55km Range | Chinese specs\n"
                "Byd Destroyer 05 Dm-i Basic Option * Year Of the Model - 2024 * Interior White * 0 Mileage * Chinese Imported * Recently Arrived\n\n"
                "Follow Us On Instagram For More Luxury Cars, Just Click on the Link:\n"
                "https://www.instagram.com/chinaskymotors/\n\n"
                "We have direct access to all Chinese companies in China. We can buy any type or any model of the car by your special order. "
                "So if you are looking for any type of car, contact us or visit our showroom — China Sky Motors FZCO.\n\n"
                "About Us : A name you can trust, Welcome to China Sky Motors FZCO. We've been in the auto industry since 2013 in UAE.\n"
                "Contact us : (Mob / Whatsapp) Sales: Muhammad Aqeel Call, Denny Call",

                // Named parameters
                padding: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.2),
                fontSize: Dimensions.titleSmall * 0.95,
                color: CustomColor.grayColor,
              ),
            ],
          ),
        );
      },
    );
  }
}
