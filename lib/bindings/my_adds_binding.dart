import 'package:get/get.dart';
import '../views/my_adds/controller/my_adds_controller.dart';

class MyAddsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAddsController());
  }
}
