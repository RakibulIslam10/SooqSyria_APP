import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../base/themes/token.dart';
import '../../../base/utils/dimensions.dart';
import '../../../base/widgets/text_widget.dart';
import '../../../languages/strings.dart';
import '../controller/Menus_controller.dart';

class LogoutWidget extends GetView<MenusController> {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.4),
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor.grayColor),

          borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),
        ),
        child: Wrap(
          children: [
            CircleAvatar(
              radius: Dimensions.radius * 1.25,
              backgroundColor: Colors.pink,
              child: Icon(
                Icons.logout_outlined,
                size: Dimensions.iconSizeSmall * 1.8,
                color: CustomColor.whiteColor,
              ),
            ),
            TextWidget(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: Dimensions.defaultHorizontalSize * 0.4,
              ),
              Strings.logOut,
              fontSize: Dimensions.titleSmall * 1.1,
              color: Color(0xffFF3636),
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
