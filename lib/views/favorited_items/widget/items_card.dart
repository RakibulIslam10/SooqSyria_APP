part of '../screen/favorited_items_screen.dart';

class ItemsCard extends GetView<FavoriteController> {
  const ItemsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        if (controller.favoriteList.isEmpty) {
          return Column(
            mainAxisAlignment: mainCenter,
            children: [
              TextWidget(Strings.youHaveNoFavoritesSavedOnThisList),
              Sizes.height.v10,
              TextWidget(
                fontSize: Dimensions.titleSmall,
                textAlign: TextAlign.center,
                Strings.useTheFavoriteIconToSaveAdsThatYouWantToCheckLatter,color: CustomColor.grayColor,),
              Sizes.height.v40,

              Container(
                padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.grayColor),
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                ),
                child: TextWidget(
                  Strings.continueSearching,
                  fontSize: Dimensions.titleSmall,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        }
        return GridView.builder(
          itemCount: controller.favoriteList.length,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            final item = controller.favoriteList[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.favorite_overviewScreen, arguments: item);
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: CustomColor.whiteColor,
                  border: Border.all(
                    color: CustomColor.primary.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            item['image'],
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      item['price'],
                      fontSize: Dimensions.titleSmall * 0.85,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.primary,
                    ),
                    const SizedBox(height: 4),
                    TextWidget(
                      item['name'],
                      fontSize: Dimensions.titleSmall * 0.8,
                    ),
                    const SizedBox(height: 4),
                    TextWidget(
                      item['distance'],
                      fontSize: Dimensions.titleSmall * 0.75,
                      color: CustomColor.grayColor,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
