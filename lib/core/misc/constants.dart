import 'package:get/get.dart';

String baseUrlApi = 'http://192.168.1.3:3000/';

class Constant {
  static const animationDuration = Duration(milliseconds: 200);
  static const defaultDuration = Duration(milliseconds: 250);
  static const defaultPadding = 20.0;

  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  static String? validateName(String value) {
    if (!GetUtils.isAlphabetOnly(value)) {
      return "Alphabet Only";
    }
    return null;
  }

  static String? validatePhoneNumber(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "Provide valid phone";
    }
    return null;
  }

  static String? validateDate(String value) {
    if (!GetUtils.isDateTime(value)) {
      return "Provide valid Date";
    }
    return null;
  }

  static String? validateNumeric(String value) {
    if (!GetUtils.isDateTime(value)) {
      return "Provide valid Numeric";
    }
    return null;
  }

  static String? validateLenght(String value, int max) {
    if (!GetUtils.isLengthBetween(value, 0, max)) {
      return "Total character not valid";
    }
    return null;
  }
}
