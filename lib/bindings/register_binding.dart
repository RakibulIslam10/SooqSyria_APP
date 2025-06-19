import 'package:get/get.dart';
import 'package:sooqyria/views/auth/register/controller/register_controller.dart';

import '../views/onboard/controller/onboard_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
