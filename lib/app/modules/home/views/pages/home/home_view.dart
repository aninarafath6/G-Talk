import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/constants/app_sizes.dart';
import 'package:g_talk/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
          preferredSize: Size(screenwidth, 50),
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
                  child:
                      Icon(Icons.search, color: AppColors.SECONDERY_TEXT_COLOR),
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
      ),
    );
  }
}
