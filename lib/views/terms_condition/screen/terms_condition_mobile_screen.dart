part of 'terms_condition_screen.dart';

class TermsConditionMobileScreen extends GetView<TermsConditionController> {
  const TermsConditionMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('TermsCondition Mobile Screen'),
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
