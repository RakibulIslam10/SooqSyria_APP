part of '../screen/home_screen.dart';

class GridCardWidget extends GetView<HomeController> {
  const GridCardWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 10,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        final category = controller.categories[index];
        return GestureDetector(
          onTap: () {
            Get.toNamed(Routes.categories_detailsScreen,arguments: category);
          },
          child: Card(
            elevation: 1,
            color: CustomColor.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
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
