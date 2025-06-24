part of 'home_screen.dart';

class HomeMobileScreen extends GetView<HomeController> {
  const HomeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                SearchHeader(),
                CarouselSliderWidget(controller: controller),
                Sizes.height.v20,
                GridCardWidget(),
                Sizes.height.v10,
                NewOfferCard(),
                RecentSerchesCard(),
                RecommendedListing(),
                PopularCarItems(),
                PopularRealStateItems(),
                PopularProduct(),
                KeepLookingItems(),
                Sizes.height.v30,
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
