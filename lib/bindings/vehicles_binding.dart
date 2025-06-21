import 'package:get/get.dart';
import '../views/vehicles/controller/vehicles_controller.dart';

class VehiclesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehiclesController());
  }
}
