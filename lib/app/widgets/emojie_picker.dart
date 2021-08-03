import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/modules/chatPage/controllers/chat_page_controller.dart';
import 'package:get/get.dart';

class EmojiePicker extends StatelessWidget {
  EmojiePicker({Key? key}) : super(key: key);
  ChatPageController chatController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: EmojiPicker(
        onEmojiSelected: (category, emoji) {
          chatController.messageController.value.text += emoji.emoji.toString();
          // Do something when emoji is tapped
        },
        onBackspacePressed: () {
          // Backspace-Button tapped logic
          // Remove this line to also remove the button in the UI
        },
        config: Config(
          columns: 8,
          backspaceColor: AppColors.INDIGO_COLOR,
          emojiSizeMax: 25.0,
          verticalSpacing: 0,
          horizontalSpacing: 0,
          initCategory: Category.RECENT,
          bgColor: Colors.white,
          indicatorColor: AppColors.INDIGO_COLOR,
          iconColor: AppColors.SECONDERY_TEXT_COLOR,
          iconColorSelected: AppColors.INDIGO_COLOR,
          progressIndicatorColor: AppColors.INDIGO_COLOR,
          showRecentsTab: true,
          recentsLimit: 28,
          noRecentsText: "No Recents",
          noRecentsStyle: const TextStyle(fontSize: 20, color: Colors.black26),
          categoryIcons: const CategoryIcons(),
          buttonMode: ButtonMode.CUPERTINO,
        ),
      ),
    );
  }
}
