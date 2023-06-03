import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/view/splash_screen.dart';

import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
