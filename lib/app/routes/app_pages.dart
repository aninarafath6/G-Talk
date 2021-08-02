import 'package:g_talk/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

import 'package:g_talk/app/modules/chatPage/bindings/chat_page_binding.dart';
import 'package:g_talk/app/modules/chatPage/views/chat_page_view.dart';

// import 'package:g_talk/app/modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_PAGE,
      page: () => ChatPageView(),
      binding: ChatPageBinding(),
    ),
  ];
}
