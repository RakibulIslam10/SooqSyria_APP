part of 'cchange_password_screen.dart';

class CchangePasswordMobileScreen extends GetView<CchangePasswordController> {
  const CchangePasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CchangePassword Mobile Screen'),
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
