import 'package:flutter/material.dart';
import 'package:g_talk/app/modules/home/controllers/chat_controller.dart';
import 'package:g_talk/app/modules/home/views/pages/home/chaTile.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ChatList extends GetView<ChatController> {
  ChatController controller = Get.put(ChatController());
  ChatList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Obx(
        () => ListView.separated(
          itemBuilder: (context, index) {
            return ChatTile(
              chat: controller.chats[index],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: controller.chats.length,
        ),
      ),
    );
  }
}
