part of 'seller_profile_screen.dart';

class SellerProfileMobileScreen extends GetView<SellerProfileController> {
  const SellerProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
      appBar: AppBarWidget(
        title: Strings.accountDetails,
        titleColor: CustomColor.blackColor,
        actions: [
          AppBarActionWidget()
        ],
      ),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            Sizes.height.v20,
            UserInfoWidget(),
            TextWidget(Strings.allListing, fontWeight: FontWeight.bold),
            Sizes.height.v20,

            AllListingWidget(),
          ],
        ),
      ),
    );
  }
}
