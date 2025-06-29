part of 'account_settings_screen.dart';

class AccountSettingsTabletScreen extends GetView<AccountSettingsController> {
  const AccountSettingsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('AccountSettings Tablet Screen'),
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
