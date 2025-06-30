part of 'categories_details_screen.dart';

class CategoriesDetailsMobileScreen
    extends GetView<CategoriesDetailsController> {
  CategoriesDetailsMobileScreen({super.key});

  final List<String> categoriesList = [
    Strings.cars,
    Strings.commercialVehicles,
    Strings.constructionEquipment,
    Strings.motorcycles,
    Strings.caravans,
    Strings.carPartsAndAccesories,
  ];
  final List<String> realStateList = ['Housing', "Commercial", "Plots"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: controller.selectedCategory.title,
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
            Column(
              crossAxisAlignment: crossStart,
              children: [
                Sizes.height.v20,
                controller.selectedCategory.title.contains(Strings.jobOffers)
                    ? SizedBox()
                    : Column(
                        crossAxisAlignment: crossStart,
                        children: [
                          TextWidget(
                            onTap: () {
                              String title = controller.selectedCategory.title;
                              if (title.contains(Strings.services)) {
                                Get.toNamed(Routes.servicesScreen);
                              } else if (title.contains(Strings.vehicles)) {
                                return;
                              } else if (title.contains(Strings.realEState)) {
                                Get.toNamed(Routes.real_state_housingScreen);
                              } else if (title.contains(Strings.jobOffers)) {
                                Get.toNamed(Routes.job_offersScreen);
                              } else if (title.contains(
                                Strings.newAndUsedProduct,
                              )) {
                                Get.toNamed(Routes.new_and_used_productScreen);
                              } else if (title.contains(Strings.animals)) {
                                return;
                              } else {
                                Get.snackbar(
                                  'Notice',
                                  'No matching category route found.',
                                );
                              }
                            },

                            padding: EdgeInsetsGeometry.only(
                              bottom: Dimensions.verticalSize * 0.2,
                            ),
                            "${Strings.allIn} ${controller.selectedCategory.title}",
                            color: CustomColor.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          Divider(),
                        ],
                      ),

                ...List.generate(
                  categoriesList.length,
                  (index) => Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      TextWidget(
                        onTap: () {
                          if (categoriesList[index].contains(Strings.cars)) {
                            Get.toNamed(
                              Routes.car_categoriesScreen,
                              arguments: categoriesList[index],
                            );
                          } else {
                            Get.toNamed(
                              Routes.sub_categoryScreen,
                              arguments: categoriesList[index],
                            );
                          }
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
