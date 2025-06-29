import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../../../routes/routes.dart';
import '../controller/profile_section_controller.dart';
part 'profile_section_tablet_screen.dart';
part 'profile_section_mobile_screen.dart';

class ProfileSectionScreen extends GetView<ProfileSectionController> {
  const ProfileSectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProfileSectionMobileScreen(),
      tablet: ProfileSectionTabletScreen(),
    );
  }
}
