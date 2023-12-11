import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:olive_pay/app/data/constantData.dart';

import '../../../components/PrimaryButton.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: res.setHeight(30),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Hero(
                  tag: 'logo',
                  child: SvgPicture.asset(
                    'assets/svgs/Olivepay.svg',
                    width: res.setWidth(30),
                    height: res.setHeight(30),
                  ),
                ),
              ),
              SizedBox(
                height: res.setHeight(450),
              ),
              Text(
                'All finances in Your Hands',
                style: TextStyle(
                  fontFamily: 'inter',
                  height: res.setHeight(1),
                  fontSize: res.setSp(60),
                  fontWeight: FontWeight.w900,
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: res.setHeight(20),
              ),
              Text(
                'Handle all your card and payment with our secure wallet and quick nfc payment method.',
                style: TextStyle(
                  fontFamily: 'inter',
                  fontSize: res.setSp(20),
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: res.setHeight(42),
              ),
              PrimaryButton(
                onPressed: () => Get.toNamed('main'),
              ),
              SizedBox(
                height: res.setHeight(20),
              ),
              RichText(
                text: TextSpan(
                  text: 'Have an account yet?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'inter',
                    fontSize: res.setSp(17),
                  ),
                  children: [
                    TextSpan(
                      text: ' Sign-up',
                      style: TextStyle(
                        color: const Color(0xFFAE64DD),
                        fontFamily: 'inter',
                        fontSize: res.setSp(17),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed('sign-up'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
