part of 'car_sub_category_screen.dart';

class CarSubCategoryTabletScreen extends GetView<CarSubCategoryController> {
  const CarSubCategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CarSubCategory Tablet Screen'),
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
