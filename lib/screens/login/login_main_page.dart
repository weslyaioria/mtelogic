import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mtelogic/controllers/auth_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_icon.dart';
import 'package:mtelogic/core/misc/app_lottie.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_button.dart';
import 'package:mtelogic/core/widget/celestial_text.dart';

class LoginMainPage extends StatelessWidget {
  LoginMainPage({Key? key}) : super(key: key);

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (8 / 91.34) * SizeConfig.screenWidth),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width * 0.6,
                  height: Get.height * 0.3,
                  child: Lottie.asset(AppLottie.login),
                ),
                SizedBox(height: (2 / 91.34) * SizeConfig.screenHeight),
                CelestialTextLeftIcon(
                    iconsax: AppIcon.messageIcon,
                    textController: authController.emailText,
                    title: "Your Email",
                    labelText: AppStyle.label12Grey,
                    labelStyle: AppStyle.label12Grey,
                    labelTextFloating: AppStyle.label12Grey,
                    iconColor: AppColor.greyColor),
                SizedBox(height: (2 / 91.34) * SizeConfig.screenHeight),
                celestialTextPassword(
                  authController,
                  authController.passwordText,
                  "Password",
                  AppStyle.label12Grey,
                  AppStyle.label12Grey,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: celestialButtonLabel(
                    () {
                      authController.goToForgotPassword();
                    },
                    "Forgot password",
                    AppStyle.label14BlueBold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        width: Get.width,
                        height: (6 / 91.34) * SizeConfig.screenHeight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: (1 / 91.34) * SizeConfig.screenHeight),
                          child: ElevatedButton(
                            onPressed: () {
                              authController.goToHome();
                              // authController.login();
                            },
                            child: Text("Login", style: AppStyle.label12White),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: (1 / 91.34) * SizeConfig.screenHeight),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        width: Get.width,
                        height: (6 / 91.34) * SizeConfig.screenHeight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: (1 / 91.34) * SizeConfig.screenHeight),
                          child: ElevatedButton(
                            onPressed: () {
                              authController.goToRegister();
                            },
                            child:
                                Text("Sign up", style: AppStyle.label12White),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: (0.5 / 91.34) * SizeConfig.screenHeight),
                SizedBox(
                  // width: Get.width,
                  height: (4 / 91.34) * SizeConfig.screenHeight,
                  child: ElevatedButton(
                    onPressed: () => authController.login(),
                    // ignore: sort_child_properties_last
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcon.googleIcon),
                        SizedBox(width: (0.5 / 91.34) * SizeConfig.screenWidth),
                        Text(
                          "Sign In with Google",
                          style: AppStyle.label12White,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.red[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
