import 'package:get/get.dart';
import '../views/new_and_used_product/controller/new_and_used_product_controller.dart';

class NewAndUsedProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewAndUsedProductController());
  }
}
