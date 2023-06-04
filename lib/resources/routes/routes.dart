import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/view/login/login_view.dart';
import 'package:getx_mvvm_mvc_rest_apis/view/splash_screen.dart';

import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.rightToLeftWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RouteName.loginView,
            page: () => const LoginView(),
            transition: Transition.rightToLeftWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
      ];
}
