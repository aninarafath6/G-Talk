
  import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:g_talk/app/widgets/userAvatar_widget.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar chatPageAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 35,
      titleSpacing: 0,
      toolbarHeight: 80,
      leading: IconButton(
        splashRadius: 25,
        splashColor: AppColors.BACKGROUND_COLOR,
        onPressed: () {
          Get.back();
        },
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.TEXT_COLOR,
          ),
        ),
      ),
      title: ListTile(
        leading: UserAvatar(
          name: Get.arguments.firstName.toString(),
          avatarUrl: Get.arguments.avatarUrl.toString(),
          radius: 20,
        ),
        title: Text(
          Get.arguments.firstName.toString() +
              " " +
              Get.arguments.lastName.toString(),
          style: GoogleFonts.publicSans(
            color: AppColors.TEXT_COLOR,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        subtitle: Text(
          'Last seend by at 7:33 pm',
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.publicSans(
            color: AppColors.SECONDERY_TEXT_COLOR,
            fontSize: 14,
          ),
        ),
        trailing: IconButton(
          splashRadius: 25,
          splashColor: AppColors.BACKGROUND_COLOR,
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
          ),
        ),
      ),
    );
  }