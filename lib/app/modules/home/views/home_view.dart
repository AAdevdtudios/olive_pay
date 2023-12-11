import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/scheduler.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    timeDilation = 5;
    Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logo',
          child: SvgPicture.asset(
            'assets/svgs/Olivepay.svg',
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
