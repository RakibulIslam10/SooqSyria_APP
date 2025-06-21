part of 'new_and_used_product_screen.dart';

class NewAndUsedProductTabletScreen extends GetView<NewAndUsedProductController> {
  const NewAndUsedProductTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('NewAndUsedProduct Tablet Screen'),
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
