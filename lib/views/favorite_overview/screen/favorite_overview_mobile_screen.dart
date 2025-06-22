part of 'favorite_overview_screen.dart';

class FavoriteOverviewMobileScreen extends GetView<FavoriteOverviewController> {
  FavoriteOverviewMobileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: Strings.favorite),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            Sizes.height.v10,
            ImageAndText(),
            Buttons()
          ],
        ),
      ),
    );
  }
}
