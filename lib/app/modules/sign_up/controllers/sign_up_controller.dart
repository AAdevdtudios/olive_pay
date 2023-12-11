import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var formKey = GlobalKey<FormState>();
  var changeVisibility = true.obs;
  validate() {
    formKey.currentState?.validate();
  }
}
