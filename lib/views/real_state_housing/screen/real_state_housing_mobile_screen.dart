part of 'real_state_housing_screen.dart';

class RealStateHousingMobileScreen extends GetView<RealStateHousingController> {
  RealStateHousingMobileScreen({super.key});

  final List<String> categoriesList = [
    Strings.cars,
    Strings.commercialVehicles,
    Strings.constructionEquipment,
    Strings.motorcycles,
    Strings.caravans,
    Strings.carPartsAndAccesories,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomColor.whiteColor,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.back(),
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
        title: Column(
          children: [
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                bottom: Dimensions.verticalSize * 0.2,
              ),
              Strings.realEState,
              fontWeight: FontWeight.w600,
              color: CustomColor.blackColor,
            ),
            TextWidget(
              Strings.housing,
              fontSize: Dimensions.titleSmall,
              fontWeight: FontWeight.w600,
              color: CustomColor.grayColor,
            ),
          ],
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
        ),
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            Sizes.height.v20,
            TextWidget(
              onTap: () {
                Get.toNamed(Routes.housing_overviewScreen);
              },
              padding: EdgeInsetsGeometry.only(
                bottom: Dimensions.verticalSize * 0.2,
              ),
              "${Strings.allIn} ${Strings.housing}",
              color: CustomColor.primary,
              fontWeight: FontWeight.bold,
            ),
            Divider(),
            ...List.generate(
              categoriesList.length,
              (index) => Column(
                crossAxisAlignment: crossStart,
                children: [
                  TextWidget(
                    onTap: () {
                      // Get.toNamed(Routes.sub_categoryScreen,arguments: categoriesList[index]);
                    },
                    categoriesList[index],
                    padding: EdgeInsetsGeometry.all(
                      Dimensions.verticalSize * 0.2,
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
