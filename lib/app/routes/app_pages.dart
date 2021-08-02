import 'package:g_talk/app/modules/home/views/pages/home/home_view.dart';
import 'package:get/get.dart';

import 'package:g_talk/app/modules/home/bindings/home_binding.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
