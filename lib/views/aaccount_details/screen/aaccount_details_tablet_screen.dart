part of 'aaccount_details_screen.dart';

class AaccountDetailsTabletScreen extends GetView<AaccountDetailsController> {
  const AaccountDetailsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('AaccountDetails Tablet Screen'),
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
