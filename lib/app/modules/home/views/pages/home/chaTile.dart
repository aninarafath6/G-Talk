import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/modules/home/models/chat_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.chat,
  }) : super(key: key);
  final ChatModel chat;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: AppColors.LIGHT_BACKROUND_COLOR,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    chat.firstName.split('')[0],
                    style: GoogleFonts.publicSans(
                      color: AppColors.INDIGO_COLOR,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
                chat.avatarUrl != ''
                    ? Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                            chat.avatarUrl,
                          ),
                          radius: 25,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
          chat.online
              ? Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: AppColors.SUCCESS_COLOR,
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: AppColors.SCAFFOLD_COLOR, width: 2),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
      title: Text(
        chat.firstName + " " + chat.lastName,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.publicSans(
          color: AppColors.TEXT_COLOR,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        chat.currentMessage,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.publicSans(
          color: AppColors.SECONDERY_TEXT_COLOR,
          fontSize: 14,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            chat.time,
            style: GoogleFonts.publicSans(
              color: AppColors.SECONDERY_TEXT_COLOR,
              fontSize: 11,
            ),
          ),
          SizedBox(height: 5),
          chat.unReadMessageCount <= 0
              ? SizedBox()
              : Opacity(
                  opacity: .6,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: AppColors.SOFT_DANGER_COLOR,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        chat.unReadMessageCount.toString(),
                        style: GoogleFonts.publicSans(
                          color: AppColors.DANGER_COLOR,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
          Spacer(),
        ],
      ),
    );
  }
}
