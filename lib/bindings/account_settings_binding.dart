import 'package:get/get.dart';
import '../views/account_settings/controller/account_settings_controller.dart';

class AccountSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountSettingsController());
  }
}
