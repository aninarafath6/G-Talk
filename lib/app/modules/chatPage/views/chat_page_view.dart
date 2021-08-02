import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_page_controller.dart';

class ChatPageView extends GetView<ChatPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChatPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
