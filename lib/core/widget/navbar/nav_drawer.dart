import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/NavDrawerController.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/widget/celestial_icon.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // CelestialImage celestialImage = new CelestialImage();
    NavDrawerController navDrawerController = Get.put(NavDrawerController());
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // celestialImage.celestialIcon(
                //     AppIcon.headerOutlet, 80.0, AppColor.darkPurple),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Bangsa The Night',
                          style: AppStyle.label10BlueBold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Luna Coffee Shop',
                          textAlign: TextAlign.start,
                          style: AppStyle.label10BlueBold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            // celestialImage.celestialIcon(
                            //     AppIcon.location, 15.0, AppColor.darkPurple),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Plaza Indah Plaza',
                                textAlign: TextAlign.start,
                                style: AppStyle.label10BlueBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: const BoxDecoration(
              color: AppColor.blueColor,
            ),
          ),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text('Dashboard'),
              onTap: () => {Get.offNamed('/dashboard')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: Column(
                children: [
                  ExpansionTile(
                    title: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Inventory")),
                    children: [
                      ListTile(
                          title: const Text("Item Group"),
                          onTap: () => {Get.offNamed('/item-group')}),
                      ListTile(
                          title: const Text("Items"),
                          onTap: () => {Get.offNamed('/items')}),
                      ListTile(
                          title: const Text("Inventory Adjustments"),
                          onTap: () => {Get.offNamed('/inventory-adjustment')}),
                    ],
                  ),
                ],
              ),
              onTap: () => {}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Customer"),
              onTap: () => {Get.offNamed('/customer')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Sales Order"),
              onTap: () => {Get.offNamed('/sales-order')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Package"),
              onTap: () => {Get.offNamed('/package')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Invoice"),
              onTap: () => {Get.offNamed('/invoice')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Sales Return"),
              onTap: () => {Get.offNamed('/sales-return')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Vendor"),
              onTap: () => {Get.offNamed('/vendor')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Purchase Order"),
              onTap: () => {Get.offNamed('/purchase-order')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Bills"),
              onTap: () => {Get.offNamed('/bill')}),
          ListTile(
              leading:
                  celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
              title: const Text("Setting"),
              onTap: () => {Get.offNamed('/setting')}),
          ListTile(
            leading: celestialIcon(AppIcon.mailIcon, AppColor.blueColor, true),
            title: const Text('Logout'),
            onTap: () => {Get.offAllNamed("/")},
          ),
          const Divider(),
        ],
      ),
    );
  }
}
