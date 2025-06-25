part of '../screen/home_screen.dart';

class SearchHeader extends GetView<HomeController> {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: Dimensions.widthSize * 1.2),
            height: Dimensions.inputBoxHeight * 0.68,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: CustomColor.whiteShadeColor,
              borderRadius: BorderRadius.circular(Dimensions.radius * 3),
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.search,
                  size: Dimensions.iconSizeSmall * 2,
                  color: CustomColor.blackColor,
                ),
                Sizes.width.v10,
                TextWidget(Strings.search, fontSize: Dimensions.titleSmall),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Get.toNamed(Routes.notificationScreen),
          child: Container(
            decoration: BoxDecoration(color: CustomColor.whiteColor),
            child: SvgPicture.asset(Assets.icons.notification),
          ),
        ),
      ],
    );
  }
}
