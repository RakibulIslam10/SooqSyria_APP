part of 'selection_category_screen.dart';

class SelectionCategoryTabletScreen extends GetView<SelectionCategoryController> {
  const SelectionCategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('SelectionCategory Tablet Screen'),
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
