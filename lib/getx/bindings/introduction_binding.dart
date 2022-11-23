import 'package:get/get.dart';
import 'package:mtelogic/controllers/introduction_controller.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(
      () => IntroductionController(),
    );
  }
}
