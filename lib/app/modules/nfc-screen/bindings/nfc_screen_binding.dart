import 'package:get/get.dart';

import '../controllers/nfc_screen_controller.dart';

class NfcScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NfcScreenController>(
      () => NfcScreenController(),
    );
  }
}
