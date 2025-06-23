import 'package:get/get.dart';
import '../views/car_overview/controller/car_overview_controller.dart';

class CarOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarOverviewController());
  }
}
