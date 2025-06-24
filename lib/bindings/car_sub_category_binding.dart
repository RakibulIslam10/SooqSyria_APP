import 'package:get/get.dart';
import '../views/car_sub_category/controller/car_sub_category_controller.dart';

class CarSubCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarSubCategoryController());
  }
}
