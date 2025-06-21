part of '../screen/new_and_used_product_screen.dart';

class ItemsListWidget extends GetView<NewAndUsedProductController> {
  ItemsListWidget({super.key});

  final List<String> categoriesList = [
    Strings.electronics,
    Strings.appliancesHome,
    Strings.furniture,
    Strings.decorationHome,
    Strings.productsKidsAndBaby,
    Strings.collectiblesHobby,
    Strings.instrumentsMusical,
    Strings.instrumentsMusical,
    Strings.householdAndCleaning,
    Strings.outdoorAndSports,
    Strings.lighting,
    Strings.kitchenware,
    Strings.cosmeticsAndCarePersonal,
    Strings.fashion,
    Strings.outdoorAndSports,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
          Strings.allInNewUsedProduct,
          color: CustomColor.primary,
          fontWeight: FontWeight.w500,
        ),
        Divider(),


        ...List.generate(
          categoriesList.length,
          (index) => Column(
            crossAxisAlignment: crossStart,
            children: [
              TextWidget(
                categoriesList[index],
                padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
