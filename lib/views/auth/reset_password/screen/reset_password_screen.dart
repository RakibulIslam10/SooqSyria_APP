import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sooqyria/base/extensions/extensions.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../../base/themes/token.dart';
import '../../../../base/utils/dimensions.dart';
import '../../../../base/utils/responsive_layout.dart';
import '../../../../base/utils/size.dart';
import '../../../../base/widgets/custom_app_bar.dart';
import '../../../../base/widgets/primary_button.dart';
import '../../../../base/widgets/primary_input_widget.dart';
import '../../../../base/widgets/text_widget.dart';
import '../../../../languages/strings.dart';
import '../controller/reset_password_controller.dart';
part 'reset_password_tablet_screen.dart';
part 'reset_password_mobile_screen.dart';
part '../widget/heading_text.dart';
part '../widget/field.dart';
part '../widget/button_and_text.dart';

class ResetPasswordScreen extends GetView<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ResetPasswordMobileScreen(),
      tablet: ResetPasswordTabletScreen(),
    );
  }
}

