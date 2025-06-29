import 'package:get/get.dart';
import '../views/profile_section/controller/profile_section_controller.dart';

class ProfileSectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSectionController());
  }
}
