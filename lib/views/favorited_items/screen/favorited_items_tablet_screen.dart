part of 'favorited_items_screen.dart';

class FavoritedItemsTabletScreen extends GetView<FavoritedItemsController> {
  const FavoritedItemsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('FavoritedItems Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
