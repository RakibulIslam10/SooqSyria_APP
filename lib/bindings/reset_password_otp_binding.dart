import 'package:get/get.dart';

import '../views/auth/reset_password_otp_screen/controller/reset_password_otp_controller.dart';

class ResetPasswordOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ResetPasswordOtpController());
  }
}
