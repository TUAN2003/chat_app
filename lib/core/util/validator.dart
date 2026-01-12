import 'package:chat_app/core/constant/regex_partern.dart';

class Validator {
  static bool isValidPhone(String phone) =>
      RegExp(RegexPartern.rgxPhone).hasMatch(phone);

  static bool isValidEmail(String email) =>
      RegExp(RegexPartern.rgxPhone).hasMatch(email);
}
