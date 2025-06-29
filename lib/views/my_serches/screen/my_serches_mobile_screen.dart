part of 'my_serches_screen.dart';

class MySerchesMobileScreen extends GetView<MySerchesController> {
  const MySerchesMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.mySearches,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SerchesItemsCard()
        ],
      ),
    );
  }
}
