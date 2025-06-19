import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/views/auth/otp_screen/screen/otp_tablet_screen.dart';
import 'package:sooqyria/views/auth/otp_screen/widget/heading_widget.dart';
import 'package:sooqyria/views/auth/otp_screen/widget/verify_button_widget.dart';
import 'package:sooqyria/views/auth/reset_password_otp_screen/screen/reset_password_otp_tablet_screen.dart';

import '../controller/reset_password_otp_controller.dart';
import '../widget/otp_field_box_widget.dart';
import '../widget/resend_text_widget.dart';

part 'reset_password_otp_mobile_screen.dart';

class ResetPasswordOtpScreen extends StatelessWidget {
  const ResetPasswordOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ResetPasswordOtpMobileScreen(),
      tablet: ResetPasswordOtpTabletScreen(),
    );
  }
}
