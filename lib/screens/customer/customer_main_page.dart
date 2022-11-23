import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/customer_controller.dart';
import 'package:mtelogic/controllers/global_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/navbar/nav_drawer.dart';
import 'package:mtelogic/screens/customer/customer_listview.dart';

class CustomerMainPage extends StatelessWidget {
  CustomerMainPage({Key? key}) : super(key: key);
  final customerController = Get.find<CustomerController>();
  final globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          iconTheme: const IconThemeData(color: AppColor.blueColor),
        ),
        drawer: Drawer(
          child: NavDrawer(),
        ),
        body: Column(
          children: [
            Obx(() => SizedBox(
                  height: (30 / 91.34) * SizeConfig.screenHeight,
                  child: listviewCustomerVertical(customerController,
                      globalController, customerController.customers),
                )),
          ],
        ),
      ),
    );
  }
}
