import 'package:get/get.dart';
import '../views/vehicles_category/controller/vehicles_category_controller.dart';

class VehiclesCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehiclesCategoryController());
  }
}
