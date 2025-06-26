part of 'car_categories_screen.dart';

class CarCategoriesTabletScreen extends GetView<CarCategoriesController> {
  const CarCategoriesTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CarCategories Tablet Screen'),
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
