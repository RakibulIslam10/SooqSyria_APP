import 'package:get/get.dart';
import '../views/real_state_category/controller/real_state_category_controller.dart';

class RealStateCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RealStateCategoryController());
  }
}
