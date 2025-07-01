part of 'cchange_password_screen.dart';

class CchangePasswordTabletScreen extends GetView<CchangePasswordController> {
  const CchangePasswordTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('CchangePassword Tablet Screen'),
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
