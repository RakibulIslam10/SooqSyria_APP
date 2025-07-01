part of 'car_add_form_screen.dart';

class CarAddFormTabletScreen extends GetView<CarAddFormController> {
  const CarAddFormTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CarAddForm Tablet Screen'),
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
