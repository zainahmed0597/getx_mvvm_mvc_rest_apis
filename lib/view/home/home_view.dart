import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/components/general_exception.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/components/internet_excpetions_widget.dart';
import '../../data/response/status.dart';
import '../../resources/routes/routes_name.dart';
import '../../view_models/controller/home/home_view_model.dart';
import '../../view_models/controller/user_preference/user_preference_view_model.dart';
import 'widgets/user_list_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('home'),
        centerTitle: true,
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () {
                _button();
              },
              icon: const Icon(Icons.lightbulb_circle)),
          IconButton(
              onPressed: () {
                userPreference.removeUser().then((value) {
                  Get.toNamed(RouteName.loginView);
                }).onError((error, stackTrace) {});
              },
              icon: const Icon(Icons.logout_outlined)),
        ],
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if (homeController.error.value == 'No internet') {
              return InterNetExceptionWidget(
                onPress: () {
                  homeController.refreshApi();
                },
              );
            } else {
              return GeneralExceptionWidget(onPress: () {
                homeController.refreshApi();
              });
            }
          case Status.COMPLETE:
            return UserListWidget();
        }
      }),
    );
  }

  void _button() async {
    try {
      final response =
          await Dio().get("http://192.168.20.105/cm?cmnd=Power%20TOGGLE");
      print(response.toString());
    } catch (e) {
      print(e);
    }
  }
}
