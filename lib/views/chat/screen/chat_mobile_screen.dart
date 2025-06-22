part of 'chat_screen.dart';

class ChatMobileScreen extends GetView<ChatController> {
  const ChatMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.whiteColor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.back(),
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
        title: Row(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  top: 18,
                  child: Icon(
                    Icons.circle,
                    color: CustomColor.activeColor,
                    size: Dimensions.iconSizeSmall,
                  ),
                ),
              ],
            ),
            TextWidget(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: Dimensions.defaultHorizontalSize,
              ),
              'Stevano Clirover',
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ChatBodyWidget(),
          TypeMessageWidget(),
          Sizes.height.v10
        ],
      ),
    );
  }
}
