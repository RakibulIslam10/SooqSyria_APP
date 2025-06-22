part of '../screen/favorite_screen.dart';

class TextHeadingBar extends GetView<FavoriteController> {
  const TextHeadingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          TextWidget(
            Strings.allFavourites,
            fontWeight: FontWeight.w500,
            color: CustomColor.grayColor,
          ),
          Sizes.width.v20,
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSize * 0.3,
              vertical: Dimensions.verticalSize * 0.1,
            ),
            decoration: BoxDecoration(
              color: CustomColor.primary,
              borderRadius: BorderRadius.circular(Dimensions.radius * 2),
            ),

            child: TextWidget(
              Strings.Default,
              fontSize: Dimensions.titleSmall * 0.8,
              fontWeight: FontWeight.w500,
              color: CustomColor.whiteColor,
            ),
          ),
        ],
      );
    
  
  }
}
