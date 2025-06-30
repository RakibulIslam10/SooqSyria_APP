import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/navigation_controller.dart';

class BottomItem extends StatelessWidget {
  BottomItem({
    super.key,
    this.icon,
    required this.label,
    this.index,
    this.path,
    this.svgSize,  // Add this optional parameter
  });

  final IconData? icon;
  final String? path;
  final String label;
  final int? index;
  final double? svgSize;  // size for SVG icon

  final controller = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index != null) controller.selectedIndex.value = index!;
      },
      child: Obx(() {
        final isSelected = controller.selectedIndex.value == index;
        return SizedBox(
          width: Dimensions.widthSize * 5.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: isSelected ? CustomColor.primary : CustomColor.disableColor,
                  size: Dimensions.iconSizeDefault * 1.2,
                )
              else if (path != null)
                SvgPicture.asset(
                  path!,
                  height: svgSize ?? Dimensions.iconSizeDefault,
                  width: svgSize ?? Dimensions.iconSizeDefault,
                  color: isSelected ? CustomColor.primary : CustomColor.disableColor,
                ),
              SizedBox(height: Dimensions.verticalSize * 0.3),
              TextWidget(
                label,
                style: TextStyle(
                  fontSize: Dimensions.labelSmall * 0.9,
                  fontWeight: FontWeight.w500,
                ),
                color: isSelected ? CustomColor.primary : CustomColor.disableColor,
              ),
            ],
          ),
        );
      }),
    );
  }
}
