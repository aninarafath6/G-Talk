import 'package:flutter/material.dart';
import 'package:g_talk/app/constants/app_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "E-Talk",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.publicSansTextTheme(),
        scaffoldBackgroundColor: AppColors.SCAFFOLD_COLOR,
        accentColor: AppColors.BACKGROUND_COLOR,
      ),
    ),
  );
}
