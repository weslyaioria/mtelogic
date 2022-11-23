import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/global_controller.dart';
import 'package:mtelogic/controllers/home_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/widget/navbar/nav_drawer.dart';

class HomeMainPage extends StatelessWidget {
  HomeMainPage({Key? key}) : super(key: key);
  final homeController = Get.find<HomeController>();
  final globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    // Future<bool> showExitPopup() async {
    //   return await showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           title: const Text('Exit App'),
    //           content: const Text('Do you want to exit an App?'),
    //           actions: [
    //             ElevatedButton(
    //               onPressed: () => Navigator.of(context).pop(false),
    //               child: const Text('No'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () => SystemNavigator.pop(),
    //               child: const Text('Yes'),
    //             ),
    //           ],
    //         ),
    //       ) ??
    //       false; //if showDialouge had returned null, then return false
    // }

    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColor.silver,
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          // title: Center(
          //     child: celestialImageLocal(
          //         AppImage.noimage,
          //         (10.9 / 91.34) * SizeConfig.screenHeight,
          //         (10.9 / 91.34) * SizeConfig.screenHeight,
          //         BoxFit.cover)),
          iconTheme: const IconThemeData(color: AppColor.blueColor),
        ),
        drawer: Drawer(
          child: NavDrawer(),
        ),
        body: const Text('data'),
      ),
    );
  }
}
