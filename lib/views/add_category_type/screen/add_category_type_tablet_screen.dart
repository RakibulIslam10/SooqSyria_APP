part of 'add_category_type_screen.dart';

class AddCategoryTypeTabletScreen extends GetView<AddCategoryTypeController> {
  const AddCategoryTypeTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('AddCategoryType Tablet Screen'),
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
