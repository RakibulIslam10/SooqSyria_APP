part of 'real_state_category_screen.dart';

class RealStateCategoryTabletScreen extends GetView<RealStateCategoryController> {
  const RealStateCategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('RealStateCategory Tablet Screen'),
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
