part of 'real_state_category_screen.dart';

class RealStateCategoryMobileScreen extends GetView<RealStateCategoryController> {
  const RealStateCategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('RealStateCategory Mobile Screen'),
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
