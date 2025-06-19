import 'package:get/get.dart';
import 'package:sooqyria/views/auth/otp_screen/controller/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OtpController());
  }
}
