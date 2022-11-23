import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:mtelogic/controllers/introduction_controller.dart';
import 'package:mtelogic/getx/route_name.dart';

class IntroductionMainPage extends StatelessWidget {
  IntroductionMainPage({Key? key}) : super(key: key);
  final introductionController = Get.find<IntroductionController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Interact Easily",
            body: "You just need to stay at home to make new friends.",
            image: SizedBox(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/main-laptop-duduk.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Find new friends",
            body:
                "If you are indeed a soul mate because of this application, we are very happy.",
            image: SizedBox(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/ojek.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Free app",
            body:
                "You don't need to worry, this application is free of any cost.",
            image: SizedBox(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/payment.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Join now",
            body:
                "Register yourself to be a part of us. We will connect with 1000 more friends.",
            image: SizedBox(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/register.json"),
              ),
            ),
          ),
        ],
        onDone: () => Get.toNamed(RouteName.login),
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Text(
          "Next",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        done: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
