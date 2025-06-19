import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/views/auth/otp_screen/screen/otp_tablet_screen.dart';
import 'package:sooqyria/views/auth/otp_screen/widget/heading_widget.dart';
import 'package:sooqyria/views/auth/otp_screen/widget/verify_button_widget.dart';

import '../controller/otp_controller.dart';
import '../widget/otp_field_box.dart';
import '../widget/resend_text_widget.dart';

part 'otp_mobile_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: OtpMobileScreen(),tablet: OtpTabletScreen(),);
  }
}
