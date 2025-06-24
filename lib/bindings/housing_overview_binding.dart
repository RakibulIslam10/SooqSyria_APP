import 'package:get/get.dart';
import '../views/housing_overview/controller/housing_overview_controller.dart';

class HousingOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HousingOverviewController());
  }
}
