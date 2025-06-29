import 'package:get/get.dart';
import '../views/my_serches/controller/my_serches_controller.dart';

class MySerchesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MySerchesController());
  }
}
