import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sooqyria/views/auth/otp_screen/controller/otp_controller.dart';

import '../../../../base/utils/dimensions.dart';
import '../../../../base/utils/size.dart';
import '../../../../base/widgets/text_widget.dart';
import '../../../../languages/strings.dart';
import '../controller/reset_password_otp_controller.dart';

class HeadingWidget extends GetView<ResetPasswordOtpController> {
  const HeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          padding: EdgeInsetsGeometry.only(
            bottom: Dimensions.verticalSize * 0.2,
          ),
          Strings.checkYourEmail,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleLarge * 0.8,
        ),
        TextWidget(
          Strings.otpDesc,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleSmall,
        ),
        Sizes.height.v20,
      ],
    );
  }
}
