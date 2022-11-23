import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtelogic/controllers/home_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/enum.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';

import '../../misc/app_sytle.dart';

class NavBarHome extends StatelessWidget {
  const NavBarHome(
      {Key? key, required this.selectedMenu, required this.homeController})
      : super(key: key);

  final MenuStateEnum selectedMenu;
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = AppColor.greyColor;
    return BottomAppBar(
      //bottom navigation bar on scaffold      ,
      color: AppColor.whiteColor,
      shape: const CircularNotchedRectangle(), //shape of notch
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Container(
        height: (5.4 / 91.34) * SizeConfig.screenHeight,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: AppColor.whiteColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (2.4 / 91.34) * SizeConfig.screenHeight),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      color: MenuStateEnum.home == selectedMenu
                          ? AppColor.greyColor
                          : inActiveIconColor,
                      iconSize: (2.4 / 91.34) * SizeConfig.screenHeight,
                      icon: SvgPicture.asset(
                        AppIcon.homeIcon,
                        color: MenuStateEnum.home == selectedMenu
                            ? AppColor.blueColor
                            : inActiveIconColor,
                      ),
                      onPressed: () => homeController.goToHome()),
                  if (MenuStateEnum.home == selectedMenu)
                    celestialLabel(
                        "Home", AppStyle.label10BlueBold, TextAlign.left)
                ],
              ),
              Row(
                children: [
                  IconButton(
                      color: MenuStateEnum.home == selectedMenu
                          ? AppColor.greyColor
                          : inActiveIconColor,
                      iconSize: (2.4 / 91.34) * SizeConfig.screenHeight,
                      icon: SvgPicture.asset(
                        AppIcon.searchIcon,
                        color: MenuStateEnum.explore == selectedMenu
                            ? AppColor.blueColor
                            : inActiveIconColor,
                      ),
                      onPressed: () => {}),
                  if (MenuStateEnum.explore == selectedMenu)
                    celestialLabel(
                        "Explore", AppStyle.label10BlueBold, TextAlign.left)
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      IconButton(
                          iconSize: (2.7 / 91.34) * SizeConfig.screenHeight,
                          icon: SvgPicture.asset(
                            AppIcon.cartIcon,
                            color: MenuStateEnum.cart == selectedMenu
                                ? AppColor.blueColor
                                : inActiveIconColor,
                          ),
                          onPressed: () =>  {}),
                      Positioned(
                        top: (0.8 / 100) * SizeConfig.screenHeight,
                        right: (1.5 / 100) * SizeConfig.screenWidth,
                        child: Container(
                          // margin: EdgeInsets.only(
                          //   top: (0.8 / 100) * SizeConfig.screenHeight,
                          //   left: (3.6 / 100) * SizeConfig.screenHeight,
                          // ),
                          width: (2.0 / 100) * SizeConfig.screenHeight,
                          height: (2.0 / 100) * SizeConfig.screenHeight,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xffc32c37),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: const Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (MenuStateEnum.cart == selectedMenu)
                    celestialLabel(
                        "Cart",
                        MenuStateEnum.cart == selectedMenu
                            ? AppStyle.label10BlueBold
                            : AppStyle.label10GreyBold,
                        TextAlign.left),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      color: MenuStateEnum.home == selectedMenu
                          ? AppColor.greyColor
                          : inActiveIconColor,
                      iconSize: (2.4 / 91.34) * SizeConfig.screenHeight,
                      icon: SvgPicture.asset(
                        AppIcon.offerIcon,
                        color: MenuStateEnum.offer == selectedMenu
                            ? AppColor.blueColor
                            : inActiveIconColor,
                      ),
                      onPressed: () =>  {}),
                  if (MenuStateEnum.offer == selectedMenu)
                    celestialLabel(
                        "Offer", AppStyle.label10BlueBold, TextAlign.left)
                ],
              ),
              Row(
                children: [
                  IconButton(
                      color: MenuStateEnum.home == selectedMenu
                          ? AppColor.greyColor
                          : inActiveIconColor,
                      iconSize: (2.4 / 91.34) * SizeConfig.screenHeight,
                      icon: SvgPicture.asset(
                        AppIcon.profileIcon,
                        color: MenuStateEnum.profile == selectedMenu
                            ? AppColor.blueColor
                            : inActiveIconColor,
                      ),
                      onPressed: () =>  {}),
                  if (MenuStateEnum.profile == selectedMenu)
                    celestialLabel(
                        "Profile", AppStyle.label10BlueBold, TextAlign.left)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
