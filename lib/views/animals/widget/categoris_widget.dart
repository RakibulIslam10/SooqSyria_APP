part of '../screen/animals_screen.dart';

class CategorisWidget extends GetView<AnimalsController> {
   CategorisWidget({Key? key}) : super(key: key);

  final List<String> categoriesList = [
    Strings.allInAnimals,
    Strings.pets,
    Strings.fishBirdsDogsCats,
    Strings.accessoriesFood,
    Strings.cageShelters,
    Strings.servicesCareVeterinary,
  ];


  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
            Strings.allInAnimals,
            color: CustomColor.primary,
            fontWeight: FontWeight.w500,
          ),

          ...List.generate(
            categoriesList.length,
                (index) => Column(
              crossAxisAlignment: crossStart,
              children: [
                Divider(),
                TextWidget(
                  categoriesList[index],
                  padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
                ),
              ],
            ),
          ),
        ],
      );
    
  
  }
}
