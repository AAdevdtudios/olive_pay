import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class QuickAccess {
  final String name;
  final IconData icon;

  QuickAccess(this.name, this.icon);
}

class DashboardController extends GetxController {
  List<QuickAccess> icons = [
    QuickAccess('Airtime', FontAwesome.signal),
    QuickAccess('Data', FontAwesome.mobile_screen_button),
    QuickAccess('Betting', FontAwesome.baseball),
    QuickAccess('Cable', FontAwesome.tv),
    QuickAccess('Electricity', FontAwesome.lightbulb),
    QuickAccess('Wifi', FontAwesome.wifi),
    QuickAccess('School fees', FontAwesome.graduation_cap),
    QuickAccess('More', FontAwesome.ellipsis),
  ];
}
