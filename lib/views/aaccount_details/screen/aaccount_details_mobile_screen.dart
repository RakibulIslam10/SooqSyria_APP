part of 'aaccount_details_screen.dart';

class AaccountDetailsMobileScreen extends GetView<AaccountDetailsController> {
  const AaccountDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.accountDetails,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          children: [
            UserProfileHeader(),
            Sizes.height.v10,
            Row(
              children: [
                TextWidget(
                  textAlign: TextAlign.left,
                  Strings.allListing,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            NoListingWidget(),
          ],
        ),
      ),
    );
  }
}
