import 'package:get/get.dart';
import '../views/select_city/controller/select_city_controller.dart';

class SelectCityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectCityController());
  }
}
