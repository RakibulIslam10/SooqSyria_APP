part of 'vehicles_screen.dart';

class VehiclesMobileScreen extends GetView<VehiclesController> {
  const VehiclesMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        Strings.vehicles,
        backgroundColor: CustomColor.whiteColor,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.close(1),
          child: Container(
            margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
            decoration: BoxDecoration(
              color: CustomColor.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: Dimensions.iconSizeLarge * 0.65,
                color: CustomColor.whiteColor,
              ),
            ),
          ),
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            Sizes.height.v20,
            TextWidget(
              Strings.allInVehicles,
              color: CustomColor.primary,
              fontWeight: FontWeight.w500,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),

              Strings.cars,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.commercialVehicles,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.constructionEquipment,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.motorcycles,
            ),
            Divider(),

            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.caravans,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.carPartsAndAccesories,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
