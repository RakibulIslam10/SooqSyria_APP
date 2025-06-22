part of '../screen/inbox_screen.dart';

class AllMessageListWidget extends GetView<InboxController> {
  const AllMessageListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(Routes.chatScreen);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.2),
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: Dimensions.defaultHorizontalSize * 0.2,
              ),
              height: 65.h,
              decoration: BoxDecoration(
                color: CustomColor.whiteColor,
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              ),

              child: Row(
                children: [
                  CircleAvatar(
                    radius: Dimensions.radius * 2.8,
                    backgroundImage: NetworkImage(
                      'https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg',
                    ),
                  ),
                  Sizes.width.v15,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: crossStart,
                      mainAxisAlignment: mainCenter,
                      children: [
                        TextWidget(
                          'Geopart Etdsien',
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.titleSmall,
                        ),
                        Sizes.height.v5,
                        TextWidget(
                          'Your Order Just Arrived!',
                          color: CustomColor.grayColor,
                          fontWeight: FontWeight.w600,
                          fontSize: Dimensions.titleSmall * 0.7,
                        ),
                      ],
                    ),
                  ),

                  Column(
                    crossAxisAlignment: crossEnd,
                    mainAxisAlignment: mainCenter,
                    children: [
                      TextWidget(
                        '13.47',
                        color: CustomColor.grayColor,
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.titleSmall * 0.7,
                      ),
                      Sizes.height.v5,
                      SvgPicture.asset(
                        'assets/icons/Double Check.svg',
                        height: Dimensions.iconSizeDefault * 0.5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
