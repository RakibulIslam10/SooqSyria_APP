part of 'sub_category_screen.dart';

class SubCategoryMobileScreen extends GetView<SubCategoryController> {
  SubCategoryMobileScreen({super.key});

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
      appBar: AppBarWidget(
        title: controller.selectedSubCategory,
        titleColor: CustomColor.blackColor,
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
            Column(
              crossAxisAlignment: crossStart,
              children: [
                Sizes.height.v20,
                TextWidget(
                  onTap: () {
                  },
                  padding: EdgeInsetsGeometry.only(
                    bottom: Dimensions.verticalSize * 0.2,
                  ),
                  "${Strings.allIn} ${controller.selectedSubCategory}",
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
          ],
        ),
      ),
    );
  }
}
