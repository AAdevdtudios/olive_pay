import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olive_pay/app/modules/main/views/pages/Cards.dart';
import 'package:olive_pay/app/modules/main/views/pages/Dashboard.dart';
import 'package:olive_pay/app/modules/main/views/pages/History.dart';

class MainController extends GetxController {
  RxInt currentPage = 0.obs;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  changeView(int val) {
    currentPage.value = val;
    if (val == 2) {
      Get.toNamed('nfc-screen');
      currentPage.value = 0;
    }
    if (val == 4) {
      Get.toNamed('profile-page');
      currentPage.value = 0;
    }
  }

  List<Widget> screens = [
    const Dashboard(),
    const CardsPage(),
    Container(),
    const History(),
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.credit_card,
    Icons.history,
    Icons.settings,
  ];
}
