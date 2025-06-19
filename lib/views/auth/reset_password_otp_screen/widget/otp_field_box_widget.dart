import 'package:flutter/cupertino.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sooqyria/views/auth/otp_screen/controller/otp_controller.dart';

import '../../../../base/themes/token.dart';
import '../../../../base/utils/dimensions.dart';
import '../../../../base/utils/size.dart';
import '../controller/reset_password_otp_controller.dart';

class OtpFieldBox extends GetView<ResetPasswordOtpController> {
  const OtpFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 5,
      borderColor: CustomColor.borderColor,
      showFieldAsBox: true,
      fieldWidth: 60,
      mainAxisAlignment: mainSpaceBet,
      borderWidth: 2,
      enabledBorderColor: CustomColor.borderColor,
      keyboardType: TextInputType.number,
      focusedBorderColor: CustomColor.borderColor,
      disabledBorderColor: CustomColor.borderColor,
      borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),

      // onSubmit: (String verificationCode) {
      //   showDialog(
      //     context: context,
      //     builder: (context) {
      //       return AlertDialog(
      //         title: Text("Verification Code"),
      //         content: Text('Code entered is $verificationCode'),
      //       );
      //     },
      //   );
      // }, // end onSubmit
    );
  }
}
