part of 'job_offers_screen.dart';

class JobOffersMobileScreen extends GetView<JobOffersController> {
  const JobOffersMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        Strings.jobOffers,
        backgroundColor: CustomColor.whiteColor,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.close(1),
          child: Container(
            margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
            decoration: BoxDecoration(
              color: CustomColor.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: Dimensions.iconSizeLarge * 0.65,
                color: CustomColor.whiteColor,
              ),
            ),
          ),
        ),
      ),

      body: _bodyWidget(context),
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
            TextWidget(Strings.full),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),

              Strings.timePart,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.freelance,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.remote,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.engineering,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.health,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.teachingAndEducation,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.siteConstruction,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.sectorService,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.itSoftware,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.courierDriver,
            ),
            Divider(),
            TextWidget(
              padding: EdgeInsetsGeometry.all(Dimensions.verticalSize * 0.2),
              Strings.officeManage,
            ),
          ],
        ),
      ),
    );
  }
}
