// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:mtelogic/getx/route_name.dart';
import 'package:mtelogic/models/users.dart';
import 'package:mtelogic/services/auth.service.dart';

class AuthController extends GetxController {
  var isSkipIntro = false.obs;
  var isAuth = false.obs;
  var user = Users().obs;
  final visibleIcon = true.obs;
  final iconsax = true.obs;
  AuthService authService = AuthService();
  TextEditingController emailForgotPasswordText =
      TextEditingController(text: '');
  TextEditingController emailText =
      TextEditingController(text: 'weslyaioria@gmail.com');
  TextEditingController passwordText = TextEditingController(text: 'serverh5n');
  final storage = const FlutterSecureStorage();

  Future<void> login() async {
    isAuth.value = false;
    if (validateEmail(emailText.value.text) == false) {
      Get.snackbar(
        "Email not Failed",
        "Test",
        icon: const Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    await authService
        .login(emailText.value.text, passwordText.value.text)
        .then((value) async {
      if (value == '') {
        Get.snackbar("error", "Login Failed");
      } else {
        isAuth.value = true;
        await storage.write(
          key: 'access_token',
          value: value.toString(),
        );
        Get.offNamed(RouteName.home);
      }
    });
  }

  Future<void> logout() async {
    Get.offAllNamed(RouteName.login);
  }

  void updateStatus(String status) {
    Get.defaultDialog(title: "Success", middleText: "Update status success");
  }

  void updatePhotoUrl(String url) async {}
  // SEARCH

  void addNewConnection(String friendEmail) async {}

  goToHome() {
    Get.toNamed(RouteName.home);
  }

  goToRegister() {
    Get.toNamed(RouteName.register);
  }

  goToForgotPassword() {
    Get.toNamed(RouteName.forgotPassword);
  }

  Future<void> send() async {}

  editProfile() {
    Get.toNamed(RouteName.editProfile);
  }

  @override
  void onClose() {}

  bool validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value.isEmpty || !regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }
}
