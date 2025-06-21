import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/inbox_controller.dart';
part 'inbox_tablet_screen.dart';
part 'inbox_mobile_screen.dart';

class InboxScreen extends GetView<InboxController> {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: InboxMobileScreen(),
      tablet: InboxTabletScreen(),
    );
  }
}
