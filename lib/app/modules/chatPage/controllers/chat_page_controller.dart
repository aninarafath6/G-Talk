import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPageController extends GetxController {
  final showPicker = false.obs;
  final focusNode = FocusNode().obs;
  final messageController = TextEditingController().obs;
  final scrollController = new ScrollController().obs;
  final isTextMessage = false.obs;
  @override
  void onInit() {
    focusNode.value.addListener(
      () {
        if (focusNode.value.hasFocus) {
          showPicker.value = false;
        }
      },
    );
    messageController.value.addListener(() {
      if (messageController.value.text.length <= 0) {
        isTextMessage.value = false;
      } else {
        isTextMessage.value = true;
      }
    });

    super.onInit();
  }

  void togglePicker() {
    if (showPicker.value) {
      showPicker.value = false;
    } else {
      showPicker.value = true;
    }
  }
}
