import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPageController extends GetxController {
  final showPicker = false.obs;
  final focusNode = FocusNode().obs;
  final messageController = TextEditingController().obs;
  @override
  void onInit() {
    focusNode.value.addListener(
      () {
        if (focusNode.value.hasFocus) {
          showPicker.value = false;
        }
      },
    );
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
