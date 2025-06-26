import 'package:get/get.dart';
import '../views/add_place_from/controller/add_place_from_controller.dart';

class AddPlaceFromBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPlaceFromController());
  }
}
