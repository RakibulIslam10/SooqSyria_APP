part of '../screen/home_screen.dart';

class RecommendedListing extends GetView<HomeController> {
  const RecommendedListing({super.key});

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
              Strings.recommendedListings,
              fontWeight: FontWeight.bold,
            ),
            SvgPicture.asset(Assets.icons.back),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.carInfoList.length,
            itemBuilder: (context, index) {
              final car = controller.carInfoList[index];
              return Padding(
                padding: EdgeInsets.only(right: Dimensions.paddingSize * 0.5),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.car_overviewScreen, arguments: car);
                  },
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimensions.radius * 0.6,
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: CustomColor.whiteColor,
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius * 0.6,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  Dimensions.radius * 0.4,
                                ),
                                child: Image.asset(
                                  car.image,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: Dimensions.paddingSize * 0.3),
                            TextWidget(
                              car.price,
                              fontSize: Dimensions.titleSmall * 0.9,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.primary,
                            ),
                            TextWidget(
                              car.title,
                              fontSize: Dimensions.titleSmall * 0.85,
                            ),
                            TextWidget(
                              car.distance,
                              fontSize: Dimensions.titleSmall * 0.8,
                              color: CustomColor.grayColor,
                            ),
                          ],
                        ),
                      ),
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
