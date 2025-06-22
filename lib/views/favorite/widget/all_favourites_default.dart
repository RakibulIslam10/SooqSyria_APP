part of '../screen/favorite_screen.dart';

class AllFavouritesDefault extends GetView<FavoriteController> {
  AllFavouritesDefault({super.key});

  final List<Map<String, dynamic>> itemList = [
    {
      "image": "assets/images/car.png",
      "price": "AED 120.2120",
      "name": "BYD.HAN.Extend",
      "distance": "2015.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 110.1120",
      "name": "Tesla Model Y",
      "distance": "1005.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
    {
      "image": "assets/images/car.png",
      "price": "AED 100.1110",
      "name": "BMW i8",
      "distance": "500.15Km",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
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
          if (index == 1) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.favorited_itemsScreen);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColor.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.4),
                  border: Border.all(
                    width: 2,
                    color: CustomColor.grayColor.withOpacity(0.3),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        Strings.viewALl,
                        fontSize: Dimensions.titleSmall,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(width: 6),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            );
          }

          final item = itemList[index];
          return Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: CustomColor.whiteColor,
              border: Border.all(color: CustomColor.primary.withOpacity(0.4)),
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
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Obx(() {
                        bool isFav = controller.isFavorite(item);
                        return GestureDetector(
                          onTap: () {
                            controller.toggleFavorite(item);
                          },
                          child: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            size: Dimensions.iconSizeLarge * 0.7,
                            color: isFav
                                ? CustomColor.primary
                                : CustomColor.blackColor.withAlpha(921),
                          ),
                        );
                      }),
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
                TextWidget(item['name'], fontSize: Dimensions.titleSmall * 0.8),
                const SizedBox(height: 4),
                TextWidget(
                  item['distance'],
                  fontSize: Dimensions.titleSmall * 0.75,
                  color: CustomColor.grayColor,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
