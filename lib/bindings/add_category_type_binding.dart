import 'package:get/get.dart';
import '../views/add_category_type/controller/add_category_type_controller.dart';

class AddCategoryTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCategoryTypeController());
  }
}
