part of 'terms_condition_screen.dart';

class TermsConditionTabletScreen extends GetView<TermsConditionController> {
  const TermsConditionTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('TermsCondition Tablet Screen'),
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
