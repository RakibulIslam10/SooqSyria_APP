import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/policies_controller.dart';
part 'policies_tablet_screen.dart';
part 'policies_mobile_screen.dart';

class PoliciesScreen extends GetView<PoliciesController> {
  const PoliciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: PoliciesMobileScreen(),
      tablet: PoliciesTabletScreen(),
    );
  }
}
