import 'package:get/get.dart';
import '../views/categories_details/controller/categories_details_controller.dart';

class CategoriesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesDetailsController());
  }
}
