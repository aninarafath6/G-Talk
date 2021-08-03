import 'package:flutter/material.dart';
import 'package:g_talk/app/modules/chatPage/views/bottom_messagebar.dart';
import 'package:g_talk/app/modules/chatPage/views/chat_page_appbar.dart';
import 'package:get/get.dart';
import '../controllers/chat_page_controller.dart';

class ChatPageView extends GetView<ChatPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatPageAppbar(),
      body: Center(
        child: Stack(
          children: [
            ListView(),
            BottomMessagbar(),
          ],
        ),
      ),
    );
  }
}
