part of '../screen/favorite_overview_screen.dart';

class Buttons extends GetView<FavoriteOverviewController> {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: Dimensions.heightSize * 3.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
              color: CustomColor.primary,
            ),
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize * 2,
              vertical: Dimensions.verticalSize * 0.21,
            ),
            child: Row(
              mainAxisAlignment: mainCenter,

              children: [
                Icon(Icons.call_outlined, color: CustomColor.whiteColor),
                Sizes.width.v5,
                TextWidget(Strings.call, color: CustomColor.whiteColor),
              ],
            ),
          ),
        ),
        Sizes.width.v10,
        Expanded(
          child: Container(
            height: Dimensions.heightSize * 3.2,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
              color: CustomColor.primary,
            ),
            padding: EdgeInsetsGeometry.symmetric(
              vertical: Dimensions.verticalSize * 0.3,
            ),
            child: Row(
              mainAxisAlignment: mainCenter,
              children: [
                Icon(Icons.chat_outlined, color: CustomColor.whiteColor),
                Sizes.width.v5,
                TextWidget(Strings.chat, color: CustomColor.whiteColor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
