import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import 'package:sooqyria/views/auth/otp_screen/controller/otp_controller.dart';
import '../../../../base/utils/size.dart';
import '../../../../base/widgets/primary_button.dart';
import '../../../../languages/strings.dart';

class VerifyButtonWidget extends GetView<OtpController> {
  const VerifyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sizes.height.v20,
        PrimaryButton(
          title: Strings.verifyCode,
          onPressed: () {
            Get.toNamed(Routes.loginScreen);
          },
        ),
        Sizes.height.v20,
      ],
    );
  }
}
