import 'package:get/get.dart';
import '../views/sub_category/controller/sub_category_controller.dart';

class SubCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubCategoryController());
  }
}
