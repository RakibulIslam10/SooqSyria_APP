import 'package:get/get.dart';
import 'package:sooqyria/views/auth/register_second_screen/controller/register_second_controller.dart';

class RegisterSecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterSecondController());
  }
}
