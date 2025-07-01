import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../base/utils/responsive_layout.dart';
import '../../../../base/widgets/custom_app_bar.dart';
import '../controller/cchange_password_controller.dart';
part 'cchange_password_tablet_screen.dart';
part 'cchange_password_mobile_screen.dart';

class CchangePasswordScreen extends GetView<CchangePasswordController> {
  const CchangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CchangePasswordMobileScreen(),
      tablet: CchangePasswordTabletScreen(),
    );
  }
}
