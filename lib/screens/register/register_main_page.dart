import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/register_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_button.dart';
import 'package:mtelogic/core/widget/celestial_icon.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';
import 'package:mtelogic/core/widget/celestial_text.dart';

class RegisterMainPage extends StatelessWidget {
  RegisterMainPage({Key? key}) : super(key: key);
  final registerController = Get.find<RegisterController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (2 / 91.34) * SizeConfig.screenHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: (8 / 91.34) * SizeConfig.screenHeight,
              ),
              Container(
                  height: (7.2 / 91.34) * SizeConfig.screenHeight,
                  width: (7.2 / 91.34) * SizeConfig.screenHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: AppColor.blueColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: celestialIcon(AppIcon.logoIcon, AppColor.whiteColor,
                        true, (7.2 / 91.34) * SizeConfig.screenHeight),
                  )),
              SizedBox(
                height: (1.6 / 91.34) * SizeConfig.screenHeight,
              ),
              celestialLabel("Let's Get Started", AppStyle.label16BlackBold),
              SizedBox(
                height: (0.8 / 91.34) * SizeConfig.screenHeight,
              ),
              celestialLabel("Create an new account", AppStyle.label12Grey),
              SizedBox(
                height: (2.8 / 91.34) * SizeConfig.screenHeight,
              ),
              CelestialTextLeftIcon(
                  iconsax: AppIcon.profileIcon,
                  textController: registerController.emailText,
                  title: "Full Name",
                  labelText: AppStyle.label12Grey,
                  labelStyle: AppStyle.label12Grey,
                  labelTextFloating: AppStyle.label12Grey,
                  iconColor: AppColor.greyColor),
              SizedBox(
                height: (0.8 / 91.34) * SizeConfig.screenHeight,
              ),
              CelestialTextLeftIcon(
                  iconsax: AppIcon.messageIcon,
                  textController: registerController.emailText,
                  title: "Your Email",
                  labelText: AppStyle.label12Grey,
                  labelStyle: AppStyle.label12Grey,
                  labelTextFloating: AppStyle.label12Grey,
                  iconColor: AppColor.greyColor),
              SizedBox(
                height: (0.8 / 91.34) * SizeConfig.screenHeight,
              ),
              CelestialTextLeftIcon(
                  iconsax: AppIcon.passwordIcon,
                  textController: registerController.emailText,
                  title: "Password",
                  labelText: AppStyle.label12Grey,
                  labelStyle: AppStyle.label12Grey,
                  labelTextFloating: AppStyle.label12Grey,
                  iconColor: AppColor.greyColor),
              SizedBox(
                height: (0.8 / 91.34) * SizeConfig.screenHeight,
              ),
              CelestialTextLeftIcon(
                  iconsax: AppIcon.passwordIcon,
                  textController: registerController.emailText,
                  title: "Confirm Password",
                  labelText: AppStyle.label12Grey,
                  labelStyle: AppStyle.label12Grey,
                  labelTextFloating: AppStyle.label12Grey,
                  iconColor: AppColor.greyColor),
              SizedBox(
                height: (1.6 / 91.34) * SizeConfig.screenHeight,
              ),
              celestialElevatedButton(
                  AppColor.blueColor, AppColor.blueColor, AppColor.whiteColor,
                  () {
                registerController.signUp();
              }, "Sign Up", AppStyle.label14white, double.infinity,
                  (5.7 / 91.34) * SizeConfig.screenHeight, 0),
              SizedBox(
                height: (2.4 / 91.34) * SizeConfig.screenHeight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  celestialLabel("Have a account?", AppStyle.label12Grey),
                  celestialButtonLabel(() {
                    registerController.goToLogin();
                  }, "Sign In", AppStyle.label12BLueBold),
                ],
              ),
              SizedBox(
                height: (16 / 91.34) * SizeConfig.screenHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
