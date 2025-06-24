
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../base/themes/token.dart';
import '../../../base/utils/dimensions.dart';
import '../../../base/utils/size.dart';
import '../../../base/widgets/text_widget.dart';
import '../../../languages/strings.dart';
import '../controller/Menus_controller.dart';

class AddsSearchesWidget extends GetView<MenusController> {
  const AddsSearchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.11,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColor.grayColor.withAlpha(88),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 1.4),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: TextWidget(
                Strings.myAds,
                fontWeight: FontWeight.bold,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Sizes.width.v20,
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.11,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColor.grayColor.withAlpha(88),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 1.4),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: TextWidget(
                Strings.mySearches,
                fontWeight: FontWeight.bold,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
