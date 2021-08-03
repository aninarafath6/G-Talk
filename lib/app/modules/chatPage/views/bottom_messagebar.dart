import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/constants/app_sizes.dart';
import 'package:g_talk/app/widgets/emojie_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomMessagbar extends StatelessWidget {
  const BottomMessagbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .80,
                  decoration: BoxDecoration(
                    color: AppColors.BACKGROUND_COLOR,
                    borderRadius: BorderRadius.circular(
                      AppSizes.BORDER_RADIUS,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions,
                            color: AppColors.SECONDERY_TEXT_COLOR,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          minLines: 1,
                          cursorColor: AppColors.INDIGO_COLOR,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            hintText: 'Message...',
                            hintStyle: GoogleFonts.publicSans(
                              color: AppColors.SECONDERY_TEXT_COLOR,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          splashColor: AppColors.BACKGROUND_COLOR,
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: AppColors.SECONDERY_TEXT_COLOR,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.INDIGO_COLOR,
                    borderRadius: BorderRadius.circular(
                      AppSizes.BORDER_RADIUS,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          EmojiePicker()
        ],
      ),
    );
  }
}
