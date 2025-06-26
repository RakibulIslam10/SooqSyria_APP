part of 'add_place_from_screen.dart';

class AddPlaceFromTabletScreen extends GetView<AddPlaceFromController> {
  const AddPlaceFromTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('AddPlaceFrom Tablet Screen'),
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
