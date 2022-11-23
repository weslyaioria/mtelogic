import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mtelogic/core/misc/constants.dart';
import 'package:mtelogic/models/customer.dart';
import 'package:mtelogic/models/ibase.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CustomerService {
  var storage = const FlutterSecureStorage();
  var ibase = IBase().obs;
  final customers = <Customer>[].obs;

  Future<IBase> fetchCustomer(
      String firstName, int pageIndex, int pageSize) async {
    var accessToken = await storage.read(key: "access_token");
    String apiURL = baseUrlApi + 'api/v1/customer/q?pageIndex=0&pageSize=5';

    final body = jsonEncode({
      'firstName': firstName,
    });

    final headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };

    var response =
        await http.post(Uri.parse(apiURL), body: body, headers: headers);
    if (response.statusCode <= 300 && response.statusCode >= 200) {
      var result = json.decode(response.body);
      ibase.value = IBase.fromJson(result);
    }
    return ibase.value;
  }
}
