part of 'seller_profile_screen.dart';

class SellerProfileTabletScreen extends GetView<SellerProfileController> {
  const SellerProfileTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('SellerProfile Tablet Screen'),
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
