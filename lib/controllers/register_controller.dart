import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/getx/route_name.dart';

class RegisterController extends GetxController {
  TextEditingController fullNameText = TextEditingController(text: '');
  TextEditingController emailText = TextEditingController(text: '');
  TextEditingController passwordText = TextEditingController(text: '');
  TextEditingController confirmPasswordText = TextEditingController(text: '');

  signUp() {}

  goToLogin() {
    Get.toNamed(RouteName.login);
  }

  @override
  void onClose() {
    fullNameText.dispose();
    emailText.dispose();
    passwordText.dispose();
    confirmPasswordText.dispose();
  }
}
