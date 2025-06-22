part of 'inbox_screen.dart';

class InboxMobileScreen extends GetView<InboxController> {
  const InboxMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarWidget(
        title: Strings.chatLIst,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: controller.allMessageList.isNotEmpty
          ? EmptyChatListWidget()
          : Column(
        crossAxisAlignment: crossStart,
            children: [
              TextWidget(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: Dimensions.verticalSize  * 0.6,
                  horizontal: Dimensions.defaultHorizontalSize
                ),
                Strings.allMessage,
                fontWeight: FontWeight.bold,
              ),
              Expanded(child: AllMessageListWidget()),
            ],
          )
    );
  }
}
