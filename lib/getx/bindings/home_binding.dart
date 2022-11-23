import 'package:get/get.dart';
import 'package:mtelogic/controllers/global_controller.dart';
import 'package:mtelogic/controllers/home_controller.dart';
import 'package:mtelogic/controllers/product_controller.dart'; 

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<GlobalController>(() => GlobalController());
    Get.lazyPut<ProductController>(() => ProductController());
  }
}
