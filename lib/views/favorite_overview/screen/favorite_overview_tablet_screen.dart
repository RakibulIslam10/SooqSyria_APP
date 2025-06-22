part of 'favorite_overview_screen.dart';

class FavoriteOverviewTabletScreen extends GetView<FavoriteOverviewController> {
  const FavoriteOverviewTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('FavoriteOverview Tablet Screen'),
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
