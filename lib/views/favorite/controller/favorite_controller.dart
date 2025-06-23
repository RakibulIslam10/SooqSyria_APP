import 'package:get/get.dart';
import 'package:sooqyria/views/home/controller/home_controller.dart';
import 'package:sooqyria/views/home/model/car_info_model.dart';

class FavoriteController extends GetxController {
  final homeController = Get.find<HomeController>();

  final RxList allFavoriteCar = <CarInfoModel>[].obs;

  void toggleFavorite(CarInfoModel item) {
    if (isFavorite(item)) {
      allFavoriteCar.remove(item);
    } else {
      allFavoriteCar.add(item);
    }
  }

  bool isFavorite(CarInfoModel item) {
    return allFavoriteCar.contains(item);
  }
}
