part of 'real_state_housing_screen.dart';

class RealStateHousingTabletScreen extends GetView<RealStateHousingController> {
  const RealStateHousingTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('RealStateHousing Tablet Screen'),
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
