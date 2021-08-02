import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class UserAvatar extends StatelessWidget {
  UserAvatar({
    Key? key,
    required this.name,
    required this.avatarUrl,
    this.radius: 23,
  }) : super(key: key);

  final String name;
  final String avatarUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white70),
        color: AppColors.LIGHT_BACKROUND_COLOR,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              name.split('')[0].toString().toUpperCase(),
              style: GoogleFonts.publicSans(
                color: AppColors.INDIGO_COLOR,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
          avatarUrl != ''
              ? Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      avatarUrl,
                    ),
                    radius: radius,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
