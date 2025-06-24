import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../base/themes/token.dart';
import '../../../base/utils/dimensions.dart';
import '../../../base/utils/size.dart';
import '../../../base/widgets/text_widget.dart';
import '../../../languages/strings.dart';
import '../controller/Menus_controller.dart';

class MenuUserHeader extends GetView<MenusController> {
  const MenuUserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(vertical: Dimensions.verticalSize * 0.8),
      padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.25),
      decoration: BoxDecoration(
        border: Border.all(
          color: CustomColor.grayColor.withAlpha(88),
          width: 1.5,
        ),

        borderRadius: BorderRadius.circular(Dimensions.radius * 1.4),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: Dimensions.radius * 3,
            backgroundImage: NetworkImage(
              'https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg',
            ),
          ),
          Sizes.width.v10,
          Column(
            crossAxisAlignment: crossStart,
            children: [
              TextWidget(
                'Edhem ismail',
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.titleSmall,
              ),

              Container(
                margin: EdgeInsetsGeometry.symmetric(
                  vertical: Dimensions.verticalSize * 0.2,
                ),
                padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.2),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.grayColor),
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
                ),
                child: TextWidget(
                  Strings.getVerified,
                  fontSize: Dimensions.titleSmall * 0.8,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextWidget(
                'Joined on 2025,may',
                fontSize: Dimensions.titleSmall * 0.9,
                color: CustomColor.grayColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
