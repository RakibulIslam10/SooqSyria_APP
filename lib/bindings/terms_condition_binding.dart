import 'package:get/get.dart';
import '../views/terms_condition/controller/terms_condition_controller.dart';

class TermsConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsConditionController());
  }
}
