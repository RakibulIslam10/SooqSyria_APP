part of 'vehicles_category_screen.dart';

class VehiclesCategoryMobileScreen extends GetView<VehiclesCategoryController> {
  const VehiclesCategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(''),
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
