import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mtelogic/core/misc/constants.dart';
import 'package:mtelogic/models/ibase.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthService {
  var storage = const FlutterSecureStorage();
  var ibase = IBase().obs;

  Future<String> login(String userName, String password) async {
    String apiURL = baseUrlApi + 'api/v1/auth/login';
    String token = '';

    final body = jsonEncode({
      'emailName': userName,
      'password': password,
    });

    final headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    var response =
        await http.post(Uri.parse(apiURL), body: body, headers: headers);

    if (response.statusCode <= 300 && response.statusCode >= 200) {
      var result = json.decode(response.body);
      if (result['resultCode'] == "200") {
        token = result['data']['token'];
      }
    }
    return token;
  }
}
