part of '../screen/favorited_items_screen.dart';

class TextHeader extends GetView<FavoriteController> {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.allFavoriteCar.isNotEmpty
        ? Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              TextWidget(
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.verticalSize * 0.4,
                ),
                Strings.allFavourites,
                color: CustomColor.grayColor,
                fontWeight: FontWeight.w500,
              ),
              SvgPicture.asset(Assets.icons.back),
            ],
          )
        : SizedBox();
  }
}
