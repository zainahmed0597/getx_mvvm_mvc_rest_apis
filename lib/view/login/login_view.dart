import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/colors/app_colors.dart';
import 'package:getx_mvvm_mvc_rest_apis/view/login/widgets/input_password_widget.dart';
import 'package:getx_mvvm_mvc_rest_apis/view_models/controller/login/login_view_model.dart';

import 'widgets/input_button_widget.dart';
import 'widgets/input_email_widget.dart';

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
                  InputEmailWidget(),
                  const SizedBox(height: 16),
                  InputPasswordWidget(),
                ],
              ),
            ),
            const SizedBox(height: 40),
            LoginButtonWidget(
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
