import 'package:flutter/material.dart';
import 'package:g_talk/app/modules/chatPage/views/bottom_messagebar.dart';
import 'package:g_talk/app/modules/chatPage/views/chat_card.dart';
import 'package:g_talk/app/modules/chatPage/views/chat_page_appbar.dart';
import 'package:get/get.dart';
import '../controllers/chat_page_controller.dart';

class ChatPageView extends StatefulWidget {
  @override
  _ChatPageViewState createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  ChatPageController controller = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: chatPageAppbar(),
      body: Center(
        child: WillPopScope(
          onWillPop: () {
            if (controller.showPicker.value) {
              controller.showPicker.value = false;
            } else {
              Get.back();
            }
            return Future.value(false);
          },
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height - 170,
                child: ListView.separated(
                  controller: controller.scrollController.value,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ChatCard(
                      message: Get.arguments.messages[index].message.toString(),
                      isResiver: Get.arguments.messages[index].isResiver,
                      time: Get.arguments.messages[index].time,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  itemCount: Get.arguments.messages.length,
                ),
              ),
              BottomMessagbar(),
            ],
          ),
        ),
      ),
    );
  }
}
