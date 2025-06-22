import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/chat_message_model.dart';

class ChatController extends GetxController {

  final messageList = <MessageModel>[].obs;
  final textController = TextEditingController();
  final scrollController = ScrollController();

  void sendMessage() {
    final text = textController.text.trim();
    if (text.isEmpty) return;

    messageList.add(MessageModel(text: text, isMe: true));
    textController.clear();

    Future.delayed(Duration(milliseconds: 300), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });

    Future.delayed(Duration(seconds: 1), () {
      messageList.add(MessageModel(text: "Bot reply to: $text", isMe: false));
    });
  }

}
