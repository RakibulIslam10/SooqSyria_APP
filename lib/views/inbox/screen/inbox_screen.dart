import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/inbox_controller.dart';
part 'inbox_tablet_screen.dart';
part 'inbox_mobile_screen.dart';
part '../widget/empty_chat_list_widget.dart';
part '../widget/all_message_list_widget.dart';


class InboxScreen extends GetView<InboxController> {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: InboxMobileScreen(),
      tablet: InboxTabletScreen(),
    );
  }
}
