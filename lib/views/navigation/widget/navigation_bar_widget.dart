import 'package:flutter/material.dart';
import 'package:sooqyria/assets/assets.dart';

import '../../../base/utils/basic_import.dart';
import 'bottom_item.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColor.whiteColor,
      padding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      height: Dimensions.heightSize * 5,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      elevation: 5,
      shadowColor: CustomColor.blackColor.withOpacity(0.6),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 0.5,
                top: Dimensions.paddingSize * 0.2,
              ),
              child: BottomItem(
                path: Assets.icons.home,
                label: Strings.home,
                index: 0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: Dimensions.paddingSize * 0.2,
                right: Get.locale?.languageCode == 'ar'
                    ? 0
                    : Dimensions.widthSize * 4,
                left: Get.locale?.languageCode == 'ar'
                    ? Dimensions.widthSize * 4
                    : 0,
              ),

              child: BottomItem(
                icon: Icons.favorite_border,
                label: Strings.favorite,
                index: 1,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: Dimensions.paddingSize * 0.2,
                left: Get.locale?.languageCode == 'ar'
                    ? 0
                    : Dimensions.widthSize * 4,
                right: Get.locale?.languageCode == 'ar'
                    ? Dimensions.widthSize * 4
                    : 0,
              ),
              child: BottomItem(
                path: Assets.icons.inbox,
                label: Strings.inbox,
                index: 2,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: Dimensions.paddingSize * 0.2,
                left: Dimensions.paddingSize * 0.5,
              ),
              child: BottomItem(
                path: Assets.icons.menuNav,
                svgSize: Dimensions.iconSizeSmall * 1.4,
                label: Strings.menu,
                index: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
