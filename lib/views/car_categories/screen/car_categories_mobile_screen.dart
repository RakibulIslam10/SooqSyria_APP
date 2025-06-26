part of 'car_categories_screen.dart';

class CarCategoriesMobileScreen extends GetView<CarCategoriesController> {
  CarCategoriesMobileScreen({super.key});

  final List<String> categoriesList = [
    "Abaart",
    "Acura",
    "Alfa Romeo",
    "Alpine",
    "Aston Martin",
    "Audi",
    "Bentley",
    "BMW",
    "Bugatti",
    "Buick",
    "BYD",
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
              Strings.vehicles,
              fontWeight: FontWeight.w600,
              color: CustomColor.blackColor,
            ),
            TextWidget(
              Strings.cars,
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
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          children: [
            Sizes.height.v20,
            ...List.generate(
              categoriesList.length,
              (index) => Column(
                crossAxisAlignment: crossStart,
                children: [
                  TextWidget(
                    onTap: () {
                      Get.toNamed(
                        Routes.car_sub_categoryScreen,
                        arguments: categoriesList[index],
                      );
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
