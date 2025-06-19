import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../../auth/register/widget/register_input_widget.dart';
import '../controller/set_password_controller.dart';
part 'set_password_tablet_screen.dart';
part 'set_password_mobile_screen.dart';
part '../widget/title_heading_text.dart';
part '../widget/field_and_button.dart';

class SetPasswordScreen extends GetView<SetPasswordController> {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SetPasswordMobileScreen(),
      tablet: SetPasswordTabletScreen(),
    );
  }
}

