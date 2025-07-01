part of 'privacy_policy_screen.dart';

class PrivacyPolicyMobileScreen extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('PrivacyPolicy Mobile Screen'),
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
