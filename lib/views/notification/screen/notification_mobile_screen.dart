part of 'notification_screen.dart';

class NotificationMobileScreen extends GetView<NotificationController> {
  const NotificationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.notification,
        titleColor: CustomColor.blackColor,
        actions: [
          Container(
            margin: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
            ),
            padding: EdgeInsets.all(Dimensions.paddingSize * 0.25),
            decoration: BoxDecoration(
              color: CustomColor.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.settings_sharp,
                size: Dimensions.iconSizeLarge * 0.65,
                color: CustomColor.whiteColor,
              ),
            ),
          ),
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: ListView(
          children: [
            if (controller.notificationList.isNotEmpty) ...[
              Sizes.height.v20,
              NotificationListWidget(),
            ] else ...[
              SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
              Column(
                crossAxisAlignment: crossCenter,
                children: [
                  TextWidget(
                    Strings.noNotificationYet,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.titleLarge,
                  ),
                  Sizes.height.v10,
                  TextWidget(
                    textAlign: TextAlign.center,
                    Strings.noNotificationStayUpDateText,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.titleSmall,
                  ),
                  Sizes.height.v20,
                  Container(
                    margin: EdgeInsetsGeometry.symmetric(
                      horizontal: Dimensions.defaultHorizontalSize * 2,
                    ),
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: Dimensions.verticalSize * 0.4,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: CustomColor.blackColor),
                      borderRadius: BorderRadius.circular(Dimensions.radius),
                    ),
                    child: Center(
                      child: TextWidget(
                        Strings.explore,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
