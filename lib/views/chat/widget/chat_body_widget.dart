part of '../screen/chat_screen.dart';

class ChatBodyWidget extends GetView<ChatController> {
  const ChatBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        return ListView.builder(
          controller: controller.scrollController,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.04,
            vertical: MediaQuery
                .of(context)
                .size
                .height * 0.02,
          ),
          itemCount: controller.messageList.length,
          itemBuilder: (context, index) {
            final message = controller.messageList[index];
            final isMe = message.isMe;
            if (isMe) {
              return Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: crossEnd,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery
                            .of(context)
                            .size
                            .width * 0.7,
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: Dimensions.verticalSize * 0.2,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: CustomColor.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius),
                            topRight: Radius.circular(Dimensions.radius),
                            bottomLeft: Radius.circular(Dimensions.radius),
                          ),
                        ),
                        child: message.imageUrl != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            File(message.imageUrl!),
                            width:
                            MediaQuery
                                .of(context)
                                .size
                                .width * 0.5,
                            fit: BoxFit.cover,
                          ),
                        )
                            : TextWidget(
                          message.text ?? '',
                          fontSize:
                          MediaQuery
                              .of(context)
                              .size
                              .width * 0.04,
                          color: isMe ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    Wrap(
                      children: [
                        TextWidget(
                          '13.47',
                          color: CustomColor.grayColor,
                          fontWeight: FontWeight.w600,
                          fontSize: Dimensions.titleSmall * 0.7,
                        ),
                        Sizes.width.v5,
                        SvgPicture.asset(
                          'assets/icons/Double Check.svg',
                          color: CustomColor.sentColor,
                          height: Dimensions.iconSizeDefault * 0.5,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 20,
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
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: mainCenter,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            'Stevano Clirover',
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.titleSmall * 0.9,
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.7,
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: Dimensions.verticalSize * 0.25,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Dimensions.radius),
                                  topRight: Radius.circular(Dimensions.radius),
                                  bottomRight: Radius.circular(
                                    Dimensions.radius,
                                  ),
                                ),
                              ),
                              child: message.imageUrl != null
                                  ? ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.file(
                                  File(message.imageUrl!),
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width *
                                      0.5,
                                  fit: BoxFit.cover,
                                ),
                              )
                                  : TextWidget(
                                message.text ?? '',
                                fontSize:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width *
                                    0.04,
                                color: isMe ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          TextWidget(
                            '09.00',
                            fontSize: Dimensions.titleSmall * 0.8,
                            color: CustomColor.grayColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        );
      }),
    );
  }
}
