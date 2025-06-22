import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/text_widget.dart';
import '../../languages/strings.dart';
import '../themes/token.dart';
import '../utils/dimensions.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final bool centerTitle;
  final Color? backgroundColor;

  const AppBarWidget({
    super.key,
    required this.title,
    this.onBack,
    this.actions,
    this.centerTitle = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor ?? CustomColor.whiteColor,
      leading: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onBack ?? () => Get.back(),
        child: Container(
          margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
          decoration: BoxDecoration(
            color: CustomColor.primary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              size: Dimensions.iconSizeLarge * 0.65,
              color: CustomColor.whiteColor,
            ),
          ),
        ),
      ),
      title: TextWidget(
        title,
        fontWeight: FontWeight.w500,
        color: CustomColor.grayColor,
      ),
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
