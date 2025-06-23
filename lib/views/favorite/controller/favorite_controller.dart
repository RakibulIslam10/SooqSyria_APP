import 'package:get/get.dart';
import 'package:sooqyria/views/home/controller/home_controller.dart';
import 'package:sooqyria/views/home/model/car_info_model.dart';

class FavoriteController extends GetxController {
  final homeController = Get.find<HomeController>();

  final RxList<CarInfoModel> allFavoriteCar = <CarInfoModel>[].obs;

  bool isFavorite(CarInfoModel item) {
    return allFavoriteCar.contains(item);
  }

  void toggleFavorite(CarInfoModel item) {
    if (isFavorite(item)) {
      allFavoriteCar.remove(item);
      Get.snackbar(
        "Removed from Favorite",
        "${item.title} has been removed",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1),
      );
    } else {
      allFavoriteCar.add(item);
      Get.snackbar(
        "Added to Favorite",
        "${item.title} has been added",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1),
      );
    }
  }
}
