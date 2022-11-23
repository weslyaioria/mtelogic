import 'package:get/get.dart';
import 'package:mtelogic/models/customer.dart';
import 'package:mtelogic/services/customer_service.dart';

class CustomerController extends GetxController {
  var customers = <Customer>[].obs;
  var customerService = CustomerService();

  @override
  void onInit() {
    super.onInit();
    readJson();
  }

  Future<void> readJson() async {
    var result = await customerService.fetchCustomer('', 0, 5);
    if (result.resultCode == '200') {
      customers.value =
          List<Customer>.from(result.data!.map((e) => Customer.fromJson(e)))
              .toList();
    }
  }
}
