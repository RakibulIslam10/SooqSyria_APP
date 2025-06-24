part of 'car_sub_category_screen.dart';

class CarSubCategoryMobileScreen extends GetView<CarSubCategoryController> {
  const CarSubCategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CarSubCategory Mobile Screen'),
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
