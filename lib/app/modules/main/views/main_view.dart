import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../data/constantData.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            child: Text('T'),
          ),
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back,',
              style: interFontB.copyWith(
                fontSize: res.setSp(17),
                color: Colors.grey,
              ),
            ),
            Text(
              '@username',
              style: interFontB.copyWith(
                fontSize: res.setSp(20),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              child: IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.notifications_none,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: PageStorage(
            bucket: controller.bucket,
            child: controller.screens.elementAt(controller.currentPage.value),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) => controller.changeView(value),
          currentIndex: controller.currentPage.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                LineAwesome.home_solid,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineAwesome.credit_card,
              ),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesome.nfc_symbol,
              ),
              label: 'Nfc',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history_edu_outlined,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesome.user,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.controller,
  });

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 20,
      child: Container(
        decoration: const BoxDecoration(),
        height: 40,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () => controller.currentPage.value = 0,
                    splashColor: Colors.transparent,
                    minWidth: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.house_outlined,
                          color: controller.currentPage.value == 0
                              ? Colors.purple
                              : Colors.black,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: controller.currentPage.value == 0
                                ? Colors.purple
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => controller.currentPage.value = 1,
                    splashColor: Colors.transparent,
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: controller.currentPage.value == 1
                              ? Colors.purple
                              : Colors.black,
                        ),
                        Text(
                          'Cards',
                          style: TextStyle(
                            color: controller.currentPage.value == 1
                                ? Colors.purple
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () => controller.currentPage.value = 2,
                    splashColor: Colors.transparent,
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history_edu_outlined,
                          color: controller.currentPage.value == 2
                              ? Colors.purple
                              : Colors.black,
                        ),
                        Text('History',
                            style: TextStyle(
                              color: controller.currentPage.value == 2
                                  ? Colors.purple
                                  : Colors.black,
                            )),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => controller.currentPage.value = 3,
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_box_outlined,
                          color: controller.currentPage.value == 3
                              ? Colors.purple
                              : Colors.black,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: controller.currentPage.value == 3
                                ? Colors.purple
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
