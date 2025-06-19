import 'package:flutter/material.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/routes/routes.dart';
import 'package:sooqyria/views/auth/register/controller/register_controller.dart';
import 'package:sooqyria/views/auth/register/screen/register_tablet_screen.dart';
import 'package:sooqyria/views/auth/register/widget/register_first_field.dart';
part 'register_mobile_screen.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RegisterMobileScreen(),
      tablet: RegisterTabletScreen(),
    );
  }
}
