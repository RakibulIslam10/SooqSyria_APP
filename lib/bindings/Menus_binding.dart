import 'package:get/get.dart';
import '../views/Menus/controller/Menus_controller.dart';

class MenusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenusController());
  }
}
