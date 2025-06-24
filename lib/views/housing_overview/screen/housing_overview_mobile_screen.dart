part of 'housing_overview_screen.dart';

class HousingOverviewMobileScreen extends GetView<HousingOverviewController> {
  const HousingOverviewMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar('HousingOverview Mobile Screen'),
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
