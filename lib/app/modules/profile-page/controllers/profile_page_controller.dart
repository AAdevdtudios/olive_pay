import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  var isActive = false.obs;
  List<bool> confirms = [true, false];
  List<ConfirmationMethodObj> confirmations = [
    ConfirmationMethodObj(
      methods: confirmationMethods.TransactionPin,
      title: 'Transaction Pin',
      subtitle: 'Use transaction pin for every transaction',
      value: true,
    ),
    ConfirmationMethodObj(
      methods: confirmationMethods.Otp,
      title: 'Otp',
      subtitle: 'Use Otp for every transaction',
      value: false,
    ),
  ].obs;
}

class ConfirmationMethodObj {
  final confirmationMethods methods;
  final String title;
  final String subtitle;
  bool value;

  ConfirmationMethodObj({
    required this.subtitle,
    required this.methods,
    required this.title,
    required this.value,
  });
}

enum confirmationMethods { TransactionPin, Otp }
