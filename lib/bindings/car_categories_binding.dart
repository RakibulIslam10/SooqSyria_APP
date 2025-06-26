import 'package:get/get.dart';
import '../views/car_categories/controller/car_categories_controller.dart';

class CarCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCategoriesController());
  }
}
