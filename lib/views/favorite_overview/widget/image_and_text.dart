part of '../screen/favorite_overview_screen.dart';

class ImageAndText extends GetView<FavoriteOverviewController> {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Container(
          height: Dimensions.inputBoxHeight * 0.65,
          padding: const EdgeInsets.symmetric(horizontal: 16),
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

        Sizes.height.v20,

        Container(
          height: MediaQuery.of(context).size.height * 0.24,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(controller.item.image),
              fit: BoxFit.cover,
            ),
          ),
        ),

        TextWidget(
          controller.item.price,
          color: CustomColor.primary,
          fontWeight: FontWeight.bold,
        ),

        TextWidget(
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.1,
          ),
          controller.item.distance,
          fontWeight: FontWeight.w500,
          fontSize: Dimensions.titleSmall,
        ),

        TextWidget(controller.item.title),

        Sizes.height.v30,
      ],
    );
  }
}
