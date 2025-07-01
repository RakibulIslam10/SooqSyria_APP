import 'package:get/get.dart';
import '../views/account_report/controller/account_report_controller.dart';

class AccountReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountReportController());
  }
}
