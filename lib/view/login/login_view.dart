import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/colors/app_colors.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/components/round_button.dart';
import 'package:getx_mvvm_mvc_rest_apis/utils/utils.dart';
import 'package:getx_mvvm_mvc_rest_apis/view_models/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'login'.tr,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.snackBar('email'.tr, 'enter_email'.tr);
                      }
                    },
                    onFieldSubmitted: (value){
                      Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    obscureText: true,
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.snackBar('password'.tr, 'enter_email'.tr);
                      }
                    },
                    onFieldSubmitted: (value){
                    },
                    decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            RoundButton(
              width: 200,
              title: 'login'.tr,
              onPress: () {
                if(_formKey.currentState!. validate()){

                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
