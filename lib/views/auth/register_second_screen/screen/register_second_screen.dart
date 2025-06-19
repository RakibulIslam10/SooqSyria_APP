import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/views/auth/register_second_screen/screen/register_second_tablet_screen.dart';

import '../../../../routes/routes.dart';
import '../../register/widget/register_input_widget.dart';
import '../controller/register_second_controller.dart';

part 'register_second_mobile_screen.dart';

class RegisterSecondScreen extends StatelessWidget {
  const RegisterSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RegisterSecondMobileScreen(),
      tablet: RegisterSecondTabletScreen(),
    );
  }
}
