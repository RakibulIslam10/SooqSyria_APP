part of 'car_overview_screen.dart';

class CarOverviewMobileScreen extends GetView<CarOverviewController> {
  const CarOverviewMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.whiteColor,
        scrolledUnderElevation: 0,
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
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CarouselSliderWidget(controller: controller),
          ),

          SliverPadding(
            padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                CarInfoHeadingText(),
                Sizes.height.v20,
                CarOverviewText(),
                DescriptionWidget(),
                SafetyFeaturesWidgets(),
                VisiteSellerWidget(),
                LocationSectionWidget(),
                SmillerCarWidgets(),
                ButtonsWidget(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
