part of 'location_add_screen.dart';

class LocationAddMobileScreen extends GetView<LocationAddController> {
  const LocationAddMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.locationDetails,
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
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                bottom: Dimensions.verticalSize * 0.2,
              ),
              Strings.pinnedLocation,
              fontWeight: FontWeight.bold,
            ),
            Image.asset('assets/images/map.png'),
            Sizes.height.betweenInputBox,
            Sizes.height.betweenInputBox,

            PrimaryInputWidget(
              controller: controller.neighhorhoodController,
              hintText: Strings.neigHorhood,
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              controller: controller.apartmentOrVilaNumberController,
              hintText: Strings.buldingOrStateName,
            ),
            Sizes.height.betweenInputBox,

            PrimaryInputWidget(
              controller: controller.apartmentOrVilaNumberController,
              hintText: Strings.apartmentOrVilaNumber,
            ),

            TextWidget(
              padding: EdgeInsetsGeometry.only(top: Dimensions.verticalSize),
              Strings.chiceHowyouwantoLabelYourLocation,
              fontSize: Dimensions.titleSmall,
              fontWeight: FontWeight.bold,
            ),

            Padding(
              padding: Dimensions.verticalSize.edgeVertical * 0.4,
              child: Wrap(
                children: List.generate(
                  3,
                  (index) => Container(
                    margin: EdgeInsetsGeometry.only(
                      right: Dimensions.widthSize,
                    ),
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: Dimensions.verticalSize * 0.4,
                      horizontal: Dimensions.defaultHorizontalSize * 0.4,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(
                        Dimensions.radius * 0.8,
                      ),
                    ),
                    child: TextWidget(
                      controller.choiceListText[index],
                      fontSize: Dimensions.titleSmall * 0.9,
                      color: CustomColor.grayColor,
                    ),
                  ),
                ),
              ),
            ),

            PrimaryButton(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: Dimensions.verticalSize,
              ),
              title: Strings.saveAddress,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
