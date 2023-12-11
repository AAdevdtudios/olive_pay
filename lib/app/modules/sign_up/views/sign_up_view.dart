import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:olive_pay/app/data/constantData.dart';

import '../../../components/PrimaryButton.dart';
import '../../../components/TextFieldsUi.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: res.setHeight(30),
                ),
                Hero(
                  tag: 'logo',
                  child: SvgPicture.asset(
                    'assets/svgs/Olivepay.svg',
                    width: res.setWidth(20),
                    height: res.setHeight(20),
                  ),
                ),
                SizedBox(
                  height: res.setHeight(20),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w900,
                    fontSize: res.setSp(60),
                  ),
                ),
                Text(
                  'Please fill in the information below to get started and start banking with us!',
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: res.setSp(17),
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                ),
                SizedBox(
                  height: res.setHeight(30),
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFieldsUi(
                        name: 'First and Last name',
                        validator: (val) => GetUtils.isLengthLessThan(val, 2)
                            ? "Name can't be empty"
                            : null,
                      ),
                      spacerItem,
                      TextFieldsUi(
                        name: 'Email',
                        validator: (val) => !GetUtils.isEmail(val)
                            ? "Please enter a valid email"
                            : null,
                      ),
                      spacerItem,
                      TextFieldsUi(
                        name: 'Username',
                        validator: (val) => GetUtils.isLengthLessThan(val, 4)
                            ? "Username can't be empty"
                            : null,
                      ),
                      spacerItem,
                      Obx(
                        () => TextFieldsUi(
                          name: 'Password',
                          icon: controller.changeVisibility.value
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                          iconButton: () => controller.changeVisibility.value =
                              !controller.changeVisibility.value,
                          isPassword: controller.changeVisibility.value,
                          validator: (val) => GetUtils.isLengthLessThan(val, 6)
                              ? "Length must be longer than 6"
                              : null,
                        ),
                      ),
                      spacerItem,
                      PrimaryButton(
                        name: 'Register',
                        onPressed: controller.validate,
                      ),
                      spacerItem,
                      RichText(
                        text: TextSpan(
                          text: 'I have an account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'inter',
                            fontSize: res.setSp(17),
                          ),
                          children: [
                            TextSpan(
                              text: ' Sign-in',
                              style: TextStyle(
                                color: const Color(0xFFAE64DD),
                                fontFamily: 'inter',
                                fontSize: res.setSp(17),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.offNamed('sign-in'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
