import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/notification_controller.dart';

part 'notification_tablet_screen.dart';

part 'notification_mobile_screen.dart';

part '../widget/notification_list_widget.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: NotificationMobileScreen(),
      tablet: NotificationTabletScreen(),
    );
  }
}
