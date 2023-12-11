import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(
    ResponsiveScreenUtilInit(
      designSize: const Size(430, 932),
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        theme: ThemeData.light(
          useMaterial3: true,
        ),
      ),
    ),
  );
}
