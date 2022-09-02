part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const DETAIL_PAGE = _Paths.DETAIL_PAGE;
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const ADD_TO_CARD = _Paths.ADD_TO_CARD;
}

abstract class _Paths {
  _Paths._();
  static const HOME_PAGE = '/home-page';
  static const DETAIL_PAGE = '/detail-page';
  static const Splash = '/splash_screen';
  static const SPLASH_SCREEN = '/splash-screen';
  static const ADD_TO_CARD = '/add-to-card';
}
