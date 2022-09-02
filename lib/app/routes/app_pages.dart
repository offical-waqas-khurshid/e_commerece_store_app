import 'package:get/get.dart';

import '../modules/add_to_card/bindings/add_to_card_binding.dart';
import '../modules/add_to_card/views/add_to_card_view.dart';
import '../modules/detail_page/bindings/detail_page_binding.dart';
import '../modules/detail_page/views/detail_page_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PAGE,
      page: () => const DetailPageView(),
      binding: DetailPageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TO_CARD,
      page: () => const AddToCardView(),
      binding: AddToCardBinding(),
    ),
  ];
}
