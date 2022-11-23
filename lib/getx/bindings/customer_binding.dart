import 'package:get/get.dart';
import 'package:mtelogic/controllers/customer_controller.dart';
import 'package:mtelogic/controllers/global_controller.dart';

class CustomerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerController>(() => CustomerController());
    Get.lazyPut<GlobalController>(() => GlobalController());
  }
}
