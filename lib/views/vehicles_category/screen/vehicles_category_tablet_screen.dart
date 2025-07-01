part of 'vehicles_category_screen.dart';

class VehiclesCategoryTabletScreen extends GetView<VehiclesCategoryController> {
  const VehiclesCategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('VehiclesCategory Tablet Screen'),
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
