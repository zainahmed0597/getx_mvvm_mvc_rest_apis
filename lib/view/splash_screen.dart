import 'package:flutter/material.dart';
import 'package:getx_mvvm_mvc_rest_apis/resources/assets/image_assets.dart';

import '../resources/components/internet_excpetions_widget.dart';
import '../resources/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            RoundButton(onPress: (){},title: 'qwe',),
          ],
        ));
  }
}
