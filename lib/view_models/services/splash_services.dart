import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/routes/routes_name.dart';
import 'package:getx_mvvm_mvc_rest_apis/utils/utils.dart';
import 'package:getx_mvvm_mvc_rest_apis/view_models/controller/user_preference/user_preference_view_model.dart';


class SplashServices {
  UserPreference userPreference = UserPreference();
  void isLogin(){
    userPreference.getUser().then((value){
      print(value.token);
      print(value.isLogin);
      if(value.isLogin == false || value.isLogin.toString() == 'null'){
        Timer(const Duration(seconds: 3),() => Get.toNamed(RouteName.loginView));
      } else {
        Timer(const Duration(seconds: 3),() => Get.toNamed(RouteName.homeView));
      }

    }).onError((error, stackTrace) {
      Utils.toastMessage(error.toString());
    });
  }
}