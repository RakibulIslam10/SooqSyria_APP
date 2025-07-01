import 'package:get/get.dart';
import '../views/location_add/controller/location_add_controller.dart';

class LocationAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationAddController());
  }
}
