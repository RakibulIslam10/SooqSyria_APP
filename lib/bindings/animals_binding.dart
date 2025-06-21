import 'package:get/get.dart';
import '../views/animals/controller/animals_controller.dart';

class AnimalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalsController());
  }
}
