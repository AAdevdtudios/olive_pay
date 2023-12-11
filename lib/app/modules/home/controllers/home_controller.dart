import 'package:get/get.dart';
import 'package:olive_pay/app/modules/onboarding/views/onboarding_view.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  @override
  void dispose() {
    startAnimation();
    super.dispose();
  }

  Future<void> startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const OnboardingView());
  }
}
