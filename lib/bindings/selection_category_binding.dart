import 'package:get/get.dart';
import '../views/selection_category/controller/selection_category_controller.dart';

class SelectionCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectionCategoryController());
  }
}
