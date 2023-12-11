import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olive_pay/app/data/constantData.dart';

import '../components/list_tile_design.dart';
import '../components/switch_tile_design.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: interFont.copyWith(
                fontSize: res.setSp(20),
                color: DocColor.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                  ),
                  SizedBox(
                    height: res.setHeight(15),
                  ),
                  Text(
                    'John doe',
                    style: interFontB.copyWith(
                      fontSize: res.setSp(25),
                    ),
                  ),
                  SizedBox(
                    height: res.setHeight(5),
                  ),
                  Text(
                    '@username',
                    style: interFont.copyWith(
                      fontSize: res.setSp(17),
                      color: DocColor.deepAsh,
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      'Share profile',
                      style: interFont.copyWith(
                        fontSize: res.setSp(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.purple[100],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current balance',
                      style: interFont.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: res.setSp(20),
                      ),
                    ),
                    Text(
                      '₦200,000',
                      style: interFont.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: res.setSp(20),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: res.setHeight(20),
                ),
                Text(
                  'Automatically top-up your Olive pay with bank transfer. Receve and send money directly to the acoount given to you no maximum receive limit.',
                  style: interFont.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: res.setSp(20),
                    color: DocColor.deepAsh,
                  ),
                  maxLines: 3,
                ),
                SizedBox(
                  height: res.setHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account details',
                      style: interFont.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: res.setSp(20),
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        'Copy',
                        style: interFont.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: res.setSp(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '2906661243',
                  style: interFont.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: res.setSp(20),
                    color: DocColor.deepAsh,
                  ),
                ),
                Text(
                  'Wema',
                  style: interFont.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: res.setSp(20),
                    color: DocColor.deepAsh,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => {},
                  child: Text(
                    'Share details',
                    style: interFont.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: res.setSp(20),
                      color: DocColor.primary,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.purple[100],
            ),
            ListTileDesign(
              onTap: () => Get.bottomSheet(
                Container(
                  height: res.setHeight(170),
                  width: double.infinity,
                  color: DocColor.secondary,
                  child: Column(
                    children: List.generate(
                      controller.confirmations.length,
                      (index) => RadioListTile(
                        value: controller.isActive.value,
                        groupValue: controller.confirmations[index].methods,
                        onChanged: (val) => controller.isActive.value = false,
                        title: Text(controller.confirmations[index].title),
                      ),
                    ),
                  ),
                ),
                barrierColor: Colors.white.withAlpha(150),
              ),
            ),
            ListTileDesign(
              onTap: () => {},
              title: 'Change transaction pin',
              subTitle: 'Update your transaction pin',
              icon: Iconsax.grid_lock,
            ),
            ListTileDesign(
              onTap: () => {},
              title: 'Change Password',
              subTitle: 'Update your app lock password',
              icon: Iconsax.lock_1,
            ),
            Obx(
              () => SwitchTileDesign(
                onTap: (val) => controller.isActive.value = val,
                value: controller.isActive.value,
              ),
            ),
            Divider(
              color: Colors.purple[100],
            ),
            ListTileDesign(
              onTap: () => {},
              title: 'Support',
              subTitle: 'Get in contact with us',
              icon: Iconsax.bubble,
            ),
            ListTileDesign(
              onTap: () => {},
              title: 'Rate the app',
              subTitle: 'Tell us about your experience',
              icon: Iconsax.star,
            ),
            Divider(
              color: Colors.purple[100],
            ),
            ListTileDesign(
              onTap: () => {},
              title: 'Log out',
              subTitle: '',
              icon: FontAwesome.right_from_bracket,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
