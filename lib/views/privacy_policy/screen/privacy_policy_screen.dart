import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/privacy_policy_controller.dart';
part 'privacy_policy_tablet_screen.dart';
part 'privacy_policy_mobile_screen.dart';

class PrivacyPolicyScreen extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: PrivacyPolicyMobileScreen(),
      tablet: PrivacyPolicyTabletScreen(),
    );
  }
}
