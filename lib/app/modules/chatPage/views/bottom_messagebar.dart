import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/constants/app_sizes.dart';
import 'package:g_talk/app/models/message_model.dart';
import 'package:g_talk/app/modules/chatPage/controllers/chat_page_controller.dart';
import 'package:g_talk/app/widgets/emojie_picker.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BottomMessagbar extends StatefulWidget {
  BottomMessagbar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomMessagbarState createState() => _BottomMessagbarState();
}

class _BottomMessagbarState extends State<BottomMessagbar> {
  ChatPageController chatController = Get.find();

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
                          onPressed: () {
                            chatController.focusNode.value.unfocus();
                            chatController.focusNode.value.canRequestFocus =
                                true;
                            chatController.togglePicker();
                          },
                          icon: Icon(
                            Icons.emoji_emotions,
                            color: AppColors.SECONDERY_TEXT_COLOR,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: chatController.messageController.value,
                          focusNode: chatController.focusNode.value,
                          style: GoogleFonts.publicSans(
                              color: AppColors.TEXT_COLOR),
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
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.INDIGO_COLOR,
                      borderRadius: BorderRadius.circular(
                        AppSizes.BORDER_RADIUS,
                      ),
                    ),
                    child: Center(
                      child: Obx(
                        () => InkWell(
                          onTap: () {
                            if (chatController.isTextMessage.value) {
                              chatController.focusNode.value.unfocus();
                              chatController.showPicker.value = false;
                              Get.arguments.messages.add(
                                MessageModel(
                                  message: chatController
                                      .messageController.value.text,
                                  time: '010:20 pm',
                                  isResiver: false,
                                ),
                              );
                              chatController.scrollController.value.animateTo(
                                chatController.scrollController.value.position
                                    .maxScrollExtent,
                                curve: Curves.easeOut,
                                duration: const Duration(milliseconds: 300),
                              );
                            }
                          },
                          child: Icon(
                            chatController.isTextMessage.value
                                ? Icons.send
                                : Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Obx(
            () {
              return chatController.showPicker.value
                  ? EmojiePicker()
                  : SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
