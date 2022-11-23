import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/controllers/auth_controller.dart';
import 'package:mtelogic/core/misc/app_color.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/core/misc/size_config.dart';
import 'package:mtelogic/core/widget/celestial_label.dart';
import 'package:mtelogic/core/widget/celestial_text.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: celestialNormalText(
                    authController.emailForgotPasswordText,
                    AppColor.whiteColor,
                    "Your Email",
                    AppStyle.label12Grey),
              ),
              SizedBox(
                height: (1.4 / 100) * SizeConfig.screenHeight,
              ),
              ElevatedButton(
                  onPressed: () {
                    authController.send();
                  },
                  child: celestialLabel("Send Email", AppStyle.label12BLueBold))
            ],
          )),
    );
  }
}
