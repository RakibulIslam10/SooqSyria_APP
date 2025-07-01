import 'package:get/get.dart';
import '../views/auth/cchange_password/controller/cchange_password_controller.dart';

class CchangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CchangePasswordController());
  }
}
