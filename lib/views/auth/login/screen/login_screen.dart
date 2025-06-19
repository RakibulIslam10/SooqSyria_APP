import 'package:flutter/material.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/routes/routes.dart';

import '../controller/login_controller.dart';
import 'login_tablet_screen.dart';

part 'login_mobile_screen.dart';

part '../widget/do_not_have_an_account.dart';

part '../widget/login_button.dart';

part '../widget/input_widget.dart';

part '../widget/login_option_section.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: LoginMobileScreen(),
      tablet: LoginTabletScreen(),
    );
  }
}
