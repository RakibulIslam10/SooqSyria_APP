part of '../screen/home_screen.dart';

class GridCardWidget extends GetView<HomeController> {
  const GridCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.categoriesInfoList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (context, index) {
        final category = controller.categoriesInfoList[index];
        return GestureDetector(
          onTap: () {
            Get.toNamed(Routes.categories_detailsScreen, arguments: category);
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: Dimensions.verticalSize * 0.1,
              horizontal: Dimensions.widthSize * 0.4,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 1.5),
                ),
              ],
              color: CustomColor.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    category.image,
                    height: Dimensions.iconSizeDefault * 1.4,
                    fit: BoxFit.contain,
                  ),
                  Sizes.height.v5,
                  TextWidget(
                    maxLines: 2,
                    category.title,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Dimensions.titleSmall * 0.7),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
