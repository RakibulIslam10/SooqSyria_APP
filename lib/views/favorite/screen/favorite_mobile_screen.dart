part of 'favorite_screen.dart';

class FavoriteMobileScreen extends GetView<FavoriteController> {
  FavoriteMobileScreen({super.key});

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.whiteColor,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.back(),
          child: Container(
            margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
            decoration: BoxDecoration(
              color: CustomColor.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: Dimensions.iconSizeLarge * 0.65,
                color: CustomColor.whiteColor,
              ),
            ),
          ),
        ),
        title: TextWidget(
          Strings.favorite,
          fontWeight: FontWeight.w500,
          color: CustomColor.grayColor,
        ),
        centerTitle: true,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          children: [
            Sizes.height.v20,

            // ElevatedButton(
            //   onPressed: () {
            //     var locale = Get.locale == Locale('en', 'US') ? Locale('ar', 'SA') : Locale('en', 'US');
            //     Get.updateLocale(locale);
            //   },
            //   child: TextWidget(Strings.fashion),
            // ),
            Row(
              children: [
                TextWidget(
                  Strings.allFavourites,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.grayColor,
                ),
                Sizes.width.v20,
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSize * 0.3,
                    vertical: Dimensions.verticalSize * 0.1,
                  ),
                  decoration: BoxDecoration(
                    color: CustomColor.primary,
                    borderRadius: BorderRadius.circular(Dimensions.radius * 2),
                  ),

                  child: TextWidget(
                    Strings.Default,
                    fontSize: Dimensions.titleSmall * 0.8,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whiteColor,
                  ),
                ),
              ],
            ),
            Sizes.height.v20,
            Expanded(
              child: Obx(() {
                final items = controller.showAll.value
                    ? itemList
                    : [itemList[0]];
                final itemCount = controller.showAll.value
                    ? items.length
                    : items.length + 1;

                return GridView.builder(
                  itemCount: itemCount,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.72,
                  ),
                  itemBuilder: (context, index) {
                    if (!controller.showAll.value && index == 1) {
                      return GestureDetector(
                        onTap: controller.showAllItems,
                        child: Container(
                          decoration: BoxDecoration(
                            color: CustomColor.whiteColor,
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius * 0.4,
                            ),
                            border: Border.all(
                              color: CustomColor.grayColor.withOpacity(0.3),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget(
                                  "View All",
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

                    final item = items[index];
                    return Container(
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
                                  item['image'],
                                  width: double.infinity,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 4,
                                right: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: const EdgeInsets.all(4),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    size: 16,
                                  ),
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
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
