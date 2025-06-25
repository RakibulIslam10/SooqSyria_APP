part of '../screen/home_screen.dart';

class PopularRealStateItems extends GetView<HomeController> {
  const PopularRealStateItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            TextWidget(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.4,
              ),
              Strings.popularInRealState,
              fontWeight: FontWeight.bold,
            ),
            Icon(Icons.arrow_forward_outlined),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.carInfoList.length > 3
                ? 4
                : controller.carInfoList.length,
            itemBuilder: (context, index) {
              if (index == 3 && controller.carInfoList.length > 3) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSize * 0.5,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.all_car_listScreen);
                    },
                    child: Column(
                      mainAxisAlignment: mainCenter,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 6),
                                blurRadius: 12, // strong blur
                                spreadRadius: 1, // slight spread
                              ),
                            ],
                          ),
                          child: Icon(Icons.arrow_forward_outlined),
                        ),

                        TextWidget(
                          padding: EdgeInsetsGeometry.symmetric(
                            vertical: Dimensions.verticalSize * 0.2,
                          ),
                          Strings.viewALl,
                          fontWeight: FontWeight.w600,
                          fontSize: Dimensions.titleSmall,
                        ),
                      ],
                    ),
                  ),
                );
              }
              return GestureDetector(
                onTap: () {
                  Get.toNamed(
                    Routes.car_overviewScreen,
                    arguments: controller.carInfoList[index],
                  );
                },
                child: Card(
                  color: Colors.purpleAccent,
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: CustomColor.whiteColor,
                      borderRadius: BorderRadius.circular(
                        Dimensions.radius * 0.4,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/car.png',
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),

                        TextWidget(
                          'AED 120.2120',
                          fontSize: Dimensions.titleSmall * 0.8,
                          color: CustomColor.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(
                          "BYD.HAN.Extend",
                          fontSize: Dimensions.titleSmall * 0.8,
                        ),
                        TextWidget(
                          "2015.15Km",
                          color: CustomColor.grayColor,
                          fontSize: Dimensions.titleSmall * 0.8,
                        ),
                      ],
                    ),
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
