import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/routes/routes.dart';
import 'package:sooqyria/views/home/model/categories_model.dart';

class AddCategoryTypeController extends GetxController {
  late final categoryInfo = Get.arguments as CategoryModel;
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


  void handleRoute(int index) {
    final arguments = {
      'argTitle': categoryInfo.title,
      'SelectedCategory': categoriesList[index],
    };

    switch (categoryInfo.title) {
      case Strings.vehicles:
        Get.toNamed(Routes.car_add_formScreen, arguments: arguments);
        break;
      case Strings.realEState:
        Get.toNamed(Routes.add_place_fromScreen, arguments: arguments);
        break;
      case Strings.jobOffers :
          Get.toNamed(Routes.add_job_offer_formScreen, arguments: arguments);
          break;

      default:
        print("Unknown category: ${categoryInfo.title}");
    }
  }

}
