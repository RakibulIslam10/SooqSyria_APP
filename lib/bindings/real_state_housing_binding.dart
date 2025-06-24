import 'package:get/get.dart';
import '../views/real_state_housing/controller/real_state_housing_controller.dart';

class RealStateHousingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RealStateHousingController());
  }
}
