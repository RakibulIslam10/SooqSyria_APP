part of '../screen/seller_profile_screen.dart';

class AllListingWidget extends GetView<SellerProfileController> {
  const AllListingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: GridView.builder(
          itemCount: 2,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            final item = controller.homeController.carInfoDataList[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  Routes.favorite_overviewScreen,
                  arguments: item,
                );
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: CustomColor.whiteColor,
                  border: Border.all(
                    color: CustomColor.primary.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(
                    Dimensions.radius * 0.4,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            item.image,
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      item.price,
                      fontSize: Dimensions.titleSmall * 0.85,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.primary,
                    ),
                    const SizedBox(height: 4),
                    TextWidget(
                      item.title,
                      fontSize: Dimensions.titleSmall * 0.8,
                    ),
                    const SizedBox(height: 4),
                    TextWidget(
                      item.distance,
                      fontSize: Dimensions.titleSmall * 0.75,
                      color: CustomColor.grayColor,
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
