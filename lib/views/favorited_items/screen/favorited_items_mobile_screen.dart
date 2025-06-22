part of 'favorited_items_screen.dart';

class FavoritedItemsMobileScreen extends GetView<FavoriteController> {
  const FavoritedItemsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: Strings.favorite),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 0.5,
        ),
        child: Column(
          children: [
            TextHeader(),
            ItemsCard(),

          ],
        ),
      ),
    );
  }
}
