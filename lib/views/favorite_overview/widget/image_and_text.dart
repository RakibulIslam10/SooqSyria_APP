part of '../screen/favorite_overview_screen.dart';

class ImageAndText extends GetView<FavoriteOverviewController> {
  ImageAndText({super.key});

  final Map<String, dynamic> item = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Container(
          height: Dimensions.inputBoxHeight * 0.65,
          padding: EdgeInsets.symmetric(horizontal: 16),
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
              image: AssetImage(item['image']),
              fit: BoxFit.cover,
            ),
          ),
        ),
        TextWidget(
          'USD 125.0000',
          color: CustomColor.primary,
          fontWeight: FontWeight.bold,
        ),
        TextWidget(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: Dimensions.verticalSize * 0.1,
          ),
          'BMW X2 2.0M Sport',
          fontWeight: FontWeight.w500,
          fontSize: Dimensions.titleSmall,
        ),
        TextWidget('BYD.HAN'),
        Sizes.height.v30,
      ],
    );
  }
}
