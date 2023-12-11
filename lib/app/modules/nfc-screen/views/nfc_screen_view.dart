import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nfc_screen_controller.dart';

class NfcScreenView extends GetView<NfcScreenController> {
  const NfcScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NfcScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NfcScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
