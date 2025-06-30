part of '../screen/home_screen.dart';

class RecentSerchesCard extends GetView<HomeController> {
  const RecentSerchesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(top: Dimensions.verticalSize * 0.8),
          Strings.recentSearch,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.22,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.carInfoDataList.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.3,
                horizontal: Dimensions.widthSize * 0.4,
              ),
              width: width * 0.75,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 1.5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Car Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      controller.carInfoDataList[index].image,
                      width: 80,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Sizes.width.v10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        controller.carInfoDataList[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      TextWidget(
                        Strings.Vehicles,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.titleSmall * 0.95,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
