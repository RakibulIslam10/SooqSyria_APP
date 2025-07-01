part of 'account_report_screen.dart';

class AccountReportMobileScreen extends GetView<AccountReportController> {
  AccountReportMobileScreen({super.key});

  final List<String> reportTextList = [
    Strings.fraud,
    Strings.attemtedScam,
    Strings.impersonation,
    Strings.fakeOrMisleadingImage,
    Strings.inappropriate,
    Strings.duplicateListing,
    Strings.soldTemStillListed,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.reportAccount,
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
            ...List.generate(
              reportTextList.length,
              (index) => Column(
                crossAxisAlignment: crossStart,
                children: [
                  TextWidget(
                    onTap: () {},
                    reportTextList[index],
                    padding: EdgeInsetsGeometry.all(
                      Dimensions.verticalSize * 0.2,
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
