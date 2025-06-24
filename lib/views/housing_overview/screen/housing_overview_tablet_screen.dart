part of 'housing_overview_screen.dart';

class HousingOverviewTabletScreen extends GetView<HousingOverviewController> {
  const HousingOverviewTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('HousingOverview Tablet Screen'),
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
