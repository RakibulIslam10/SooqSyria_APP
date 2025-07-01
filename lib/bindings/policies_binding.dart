import 'package:get/get.dart';
import '../views/policies/controller/policies_controller.dart';

class PoliciesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PoliciesController());
  }
}
