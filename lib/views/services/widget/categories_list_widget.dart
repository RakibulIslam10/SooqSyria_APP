part of '../screen/services_screen.dart';

class CategoriesListWidget extends GetView<ServicesController> {
   CategoriesListWidget({super.key});
  final List<String> categoriesList = [
    Strings.transportMoving,
    Strings.cleaningService,
    Strings.technicalServices,
    Strings.educationCourse,
    Strings.repairAndMaintenance,
    Strings.healthANdBeauty ,
    Strings.eventsAndOrganization,
    Strings.translationAndPrivate,
  ];

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: crossStart,
        children: [
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
