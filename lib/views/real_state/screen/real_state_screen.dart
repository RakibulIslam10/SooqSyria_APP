import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/real_state_controller.dart';
part 'real_state_tablet_screen.dart';
part 'real_state_mobile_screen.dart';

class RealStateScreen extends GetView<RealStateController> {
  const RealStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RealStateMobileScreen(),
      tablet: RealStateTabletScreen(),
    );
  }
}
