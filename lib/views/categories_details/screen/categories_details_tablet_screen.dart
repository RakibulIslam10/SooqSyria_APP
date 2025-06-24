part of 'categories_details_screen.dart';

class CategoriesDetailsTabletScreen extends GetView<CategoriesDetailsController> {
  const CategoriesDetailsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CategoriesDetails Tablet Screen'),
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
