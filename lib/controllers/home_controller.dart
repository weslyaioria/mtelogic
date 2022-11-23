import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/getx/route_name.dart';

class HomeController extends GetxController {
  TextEditingController searchText = TextEditingController(text: '');
  goToHome() {
    Get.toNamed(RouteName.home);
  }
  

  @override
  void onClose() {
    searchText.dispose();
  }
}
