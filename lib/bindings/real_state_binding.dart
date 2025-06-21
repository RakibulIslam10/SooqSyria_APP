import 'package:get/get.dart';
import '../views/real_state/controller/real_state_controller.dart';

class RealStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RealStateController());
  }
}
