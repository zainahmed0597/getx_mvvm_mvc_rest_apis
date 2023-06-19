import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm_mvc_rest_apis/view_models/controller/user_preference/user_preference_view_model.dart';

import '../../../model/login/user_model.dart';
import '../../../resources/routes/routes_name.dart';
import '../../../utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBar('login'.tr, value['error']);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);
        userPreference.saveUser(userModel).then((value) {
          Get.toNamed(RouteName.homeView)!.then((value) {
            Get.delete<LoginViewModel>();
          });
          Utils.snackBar('login'.tr, 'login_successfully'.tr);
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('error'.tr, error.toString());
    });
  }
}
