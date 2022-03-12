import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class PhoneUtils {
  static Future<String> convertToRegionCodePhone(String phone) async {
    final String phoneNumber = PhoneNumber.fromCountryCode('84', phone).toString();
    return phoneNumber;
  }
}
