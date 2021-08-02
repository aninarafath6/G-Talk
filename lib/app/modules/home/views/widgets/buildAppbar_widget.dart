import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/constants/app_sizes.dart';
import 'package:g_talk/app/modules/home/views/widgets/userAvatar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppbar(double screenwidth) {
  return AppBar(
    toolbarHeight: 130,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Chats',
        style: GoogleFonts.publicSans(
          color: AppColors.TEXT_COLOR,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size(screenwidth, 80),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: screenwidth,
        margin: EdgeInsets.symmetric(horizontal: AppSizes.APP_PADDING),
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.BACKGROUND_COLOR,
          borderRadius: BorderRadius.circular(AppSizes.BORDER_RADIUS),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10),
              child: Icon(Icons.search, color: AppColors.SECONDERY_TEXT_COLOR),
            ),
            Expanded(
              child: TextField(
                cursorColor: AppColors.SECONDERY_TEXT_COLOR,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'search for users',
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: UserAvatar(
          name: 'anin',
          avatarUrl: 'https://avatars.githubusercontent.com/u/65447144?v=4',
          radius: 18,
        ),
      ),
    ],
  );
}
