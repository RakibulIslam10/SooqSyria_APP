import 'package:get/get.dart';
import '../views/all_car_list/controller/all_car_list_controller.dart';

class AllCarListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllCarListController());
  }
}
