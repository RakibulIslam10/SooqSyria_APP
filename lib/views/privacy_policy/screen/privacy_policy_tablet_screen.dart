part of 'privacy_policy_screen.dart';

class PrivacyPolicyTabletScreen extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('PrivacyPolicy Tablet Screen'),
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
