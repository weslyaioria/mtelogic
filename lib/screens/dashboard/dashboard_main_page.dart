import 'package:flutter/material.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/widget/navbar/nav_drawer.dart';

class DashboardMainPage extends StatelessWidget {
  const DashboardMainPage({Key? key}) : super(key: key);

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
        body: const Text("Dashboard"),
      ),
    );
  }
}
