import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/chat_controller.dart';
part 'chat_tablet_screen.dart';
part 'chat_mobile_screen.dart';
part '../widget/type_message_widget.dart';
part '../widget/chat_body_widget.dart';


class ChatScreen extends GetView<ChatController> {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ChatMobileScreen(),
      tablet: ChatTabletScreen(),
    );
  }
}
