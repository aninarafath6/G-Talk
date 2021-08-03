import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';

class EmojiePicker extends StatelessWidget {
  const EmojiePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: EmojiPicker(
        onEmojiSelected: (category, emoji) {
          // Do something when emoji is tapped
        },
        onBackspacePressed: () {
          // Backspace-Button tapped logic
          // Remove this line to also remove the button in the UI
        },
        config: Config(
          columns: 7,
          backspaceColor: AppColors.TEXT_COLOR,
          emojiSizeMax: 45.0,
          verticalSpacing: 0,
          horizontalSpacing: 0,
          initCategory: Category.RECENT,
          bgColor: Colors.white,
          indicatorColor: AppColors.INDIGO_COLOR,
          iconColor: AppColors.SECONDERY_TEXT_COLOR,
          iconColorSelected: AppColors.INDIGO_COLOR,
          progressIndicatorColor: AppColors.SECONDERY_TEXT_COLOR,
          showRecentsTab: true,
          recentsLimit: 28,
          noRecentsText: "No Recents",
          noRecentsStyle: const TextStyle(fontSize: 20, color: Colors.black26),
          categoryIcons: const CategoryIcons(),
          buttonMode: ButtonMode.MATERIAL,
        ),
      ),
    );
  }
}
