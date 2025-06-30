part of '../screen/home_screen.dart';

class PopularCarItems extends GetView<HomeController> {
  const PopularCarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: crossStart,
      children: [
        Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            TextWidget(
              padding: EdgeInsets.only(
                bottom: Dimensions.verticalSize * 0.2,
                top: Dimensions.verticalSize * 0.4,
              ),
              Strings.popularInCar,
              fontWeight: FontWeight.bold,
            ),
            Image.asset(Assets.icons.goArrow),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.21,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.carInfoDataList.length,
            itemBuilder: (context, index) {
              final info = controller.carInfoDataList[index];
              return GestureDetector(
                onTap: () {
                  Get.toNamed(
                    Routes.car_overviewScreen,
                    arguments: controller.carInfoDataList[index],
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: Dimensions.verticalSize * 0.3,
                    horizontal: Dimensions.widthSize * 0.4,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 1.5),
                      ),
                    ],
                    color: CustomColor.whiteColor,
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius * 0.8,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        info.image,
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.12,
                      ),

                      TextWidget(
                        padding: Dimensions.widthSize.edgeHorizontal,
                        info.price,
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,

                        fontSize: Dimensions.titleSmall * 0.8,
                        color: CustomColor.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      TextWidget(
                        padding: Dimensions.widthSize.edgeHorizontal,
                        info.title,
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,

                        fontSize: Dimensions.titleSmall * 0.8,
                      ),
                      TextWidget(
                        padding: Dimensions.widthSize.edgeHorizontal,
                        info.distance,
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,
                        color: CustomColor.grayColor,
                        fontSize: Dimensions.titleSmall * 0.8,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
