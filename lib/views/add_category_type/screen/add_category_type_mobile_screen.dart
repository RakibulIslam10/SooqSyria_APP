part of 'add_category_type_screen.dart';

class AddCategoryTypeMobileScreen extends GetView<AddCategoryTypeController> {
  const AddCategoryTypeMobileScreen({super.key});

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
              controller.categoryInfo.title,
              fontWeight: FontWeight.w600,
              color: CustomColor.blackColor,
            ),
            TextWidget(
              Strings.choiceTheCetegoryThatYours,
              fontSize: Dimensions.titleSmall * 0.8,
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
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          children: [
            Sizes.height.v20,
            ...List.generate(
              controller.categoriesList.length,
              (index) => Column(
                crossAxisAlignment: crossStart,
                children: [
                  TextWidget(
                    onTap: () {
                      controller.handleRoute(index);
                    },
                    controller.categoriesList[index],
                    padding: EdgeInsetsGeometry.all(
                      Dimensions.verticalSize * 0.2,
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
