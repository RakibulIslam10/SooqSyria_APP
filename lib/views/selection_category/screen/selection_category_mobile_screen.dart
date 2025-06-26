part of 'selection_category_screen.dart';

class SelectionCategoryMobileScreen
    extends GetView<SelectionCategoryController> {
  const SelectionCategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Dimensions.heightSize * 6,
        scrolledUnderElevation: 0,
        centerTitle: true,
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
        title: Column(
          children: [
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                bottom: Dimensions.verticalSize * 0.2,
              ),
              Strings.helloWhatAreYouListingToday,
              fontWeight: FontWeight.w600,
              fontSize: Dimensions.titleLarge * 0.9,
              color: CustomColor.blackColor,
            ),
            TextWidget(
              Strings.whereShouldWePlaceYourAdd,
              fontSize: Dimensions.titleSmall * 0.9,
              fontWeight: FontWeight.w600,
              color: CustomColor.grayColor,
            ),
          ],
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Sizes.height.v40,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.defaultHorizontalSize * 2.5,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 10,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                final category = controller.categories[index];
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.add_category_typeScreen,arguments: category);
                  },
                  child: Card(
                    elevation: 5,
                    color: CustomColor.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          category.image,
                          height: Dimensions.iconSizeDefault * 1.5,
                          fit: BoxFit.contain,
                        ),
                        Sizes.height.v10,
                        TextWidget(
                          maxLines: 2,
                          category.title,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                          fontSize: Dimensions.titleSmall,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
