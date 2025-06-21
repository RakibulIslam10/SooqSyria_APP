part of 'new_and_used_product_screen.dart';

class NewAndUsedProductMobileScreen extends GetView<NewAndUsedProductController> {
  const NewAndUsedProductMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        centerTitle: true,
        Strings.newAndUsedProduct,
        backgroundColor: CustomColor.whiteColor,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.close(1),
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
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
          child: Column(
            children: [
              Sizes.height.v20,
              ItemsListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
