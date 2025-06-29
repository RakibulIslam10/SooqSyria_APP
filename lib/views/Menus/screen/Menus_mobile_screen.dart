import 'package:flutter/material.dart';
import 'package:sooqyria/assets/assets.dart';
import 'package:sooqyria/routes/routes.dart';
import 'package:sooqyria/views/Menus/widget/adds_searches_widget.dart';
import 'package:sooqyria/views/Menus/widget/logout_widget.dart';
import 'package:sooqyria/views/Menus/widget/menu_user_header.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/Menus_controller.dart';

class MenusMobileScreen extends GetView<MenusController> {
  const MenusMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 0.4,
        ),
        child: Column(
          children: [
            MenuUserHeader(),
            AddsSearchesWidget(),
            Container(
              margin: EdgeInsetsGeometry.symmetric(
                vertical: Dimensions.verticalSize * 0.5,
              ),
              padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.6),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColor.grayColor.withAlpha(88),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.4),
              ),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  items(
                    Assets.icons.profile,
                    Strings.profile,
                    () => Get.toNamed(Routes.profile_sectionScreen),
                  ),
                  items(
                    Assets.icons.acs,
                    Strings.accountSetting,
                    () => Get.toNamed(Routes.account_settingsScreen),
                  ),
                  items(
                    Assets.icons.global,
                    Strings.languageCurrrency,

                    () => Get.toNamed(Routes.profile_sectionScreen),
                  ),
                  items(
                    Assets.icons.support,
                    Strings.support,
                    () => Get.toNamed(Routes.profile_sectionScreen),
                  ),
                  items(
                    Assets.icons.call,
                    Strings.callUs,
                    () => Get.toNamed(Routes.profile_sectionScreen),
                  ),
                  items(
                    Assets.icons.police,
                    Strings.policies,
                    () => Get.toNamed(Routes.profile_sectionScreen),
                  ),
                  Sizes.height.v40,
                  LogoutWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  items(String path, String title, Function()? onTap) {
    return Padding(
      padding: Dimensions.verticalSize.edgeVertical * 0.4,
      child: GestureDetector(
        onTap: onTap ?? () {},
        child: Wrap(
          children: [
            Image.asset(path, height: Dimensions.iconSizeDefault * 1.2),
            Sizes.width.v10,
            TextWidget(title),
          ],
        ),
      ),
    );
  }
}
