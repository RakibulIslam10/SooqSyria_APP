part of 'car_overview_screen.dart';

class CarOverviewMobileScreen extends GetView<CarOverviewController> {
  const CarOverviewMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBarWidget(title: ''),
      body: _bodyWidget(context),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: ButtonsWidget(),
      ),
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

              ]),
            ),
          ),
        ],
      ),
    );
  }
}
