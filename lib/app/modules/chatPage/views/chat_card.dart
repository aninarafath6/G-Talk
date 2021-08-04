import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatCard extends StatelessWidget {
  const ChatCard(
      {Key? key,
      this.isResiver: false,
      required this.message,
      required this.time})
      : super(key: key);
  final bool isResiver;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Align(
        alignment: isResiver ? Alignment.centerLeft : Alignment.centerRight,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 45,
            minWidth: 80,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: isResiver
                  ? AppColors.BACKGROUND_COLOR
                  : AppColors.INDIGO_COLOR,
              borderRadius: BorderRadius.only(
                topRight: isResiver ? Radius.circular(10) : Radius.circular(0),
                topLeft: isResiver ? Radius.circular(5) : Radius.circular(10),
                bottomRight:
                    isResiver ? Radius.circular(10) : Radius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0, right: 50),
                  child: Text(
                    message,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.publicSans(
                      color: isResiver ? AppColors.TEXT_COLOR : Colors.white,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: Text(
                    time,
                    style: GoogleFonts.publicSans(
                      fontSize: 11,
                      color: isResiver ? AppColors.TEXT_COLOR : Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
