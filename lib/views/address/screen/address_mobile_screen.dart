part of 'address_screen.dart';

class AddressMobileScreen extends GetView<AddressController> {
  const AddressMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.address,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
        ),
        child:
          Column(children: [
            AddressNotFoundWidgets()
          ],)
      ),
    );
  }
}
