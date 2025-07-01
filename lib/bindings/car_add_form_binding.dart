import 'package:get/get.dart';
import '../views/car_add_form/controller/car_add_form_controller.dart';

class CarAddFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarAddFormController());
  }
}
