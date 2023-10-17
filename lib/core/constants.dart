import 'package:flutter/material.dart';

abstract final class Constants {
  static String get baseUrl => "https://my-json-server.typicode.com/";
}

abstract final class ColorStyle {
  static Color get kPrimaryColor => const Color(0xff2E665A);
  static Color get whiteColor => Colors.white;
  static Color get kPrimaryColorWithOpacity => const Color(0xff9ED0C5);
  static Color get kNonPrimaryColor => const Color(0xffDBF6F0);
  static Color get blackColor => const Color(0xff051A15);
  static Color get darkGray => const Color(0xff233833);
  static Color get orangeColor => const Color(0xffC7772E);
}

abstract class SvgImg {
  static String get exit => 'assets/icons/exit.svg';
  static String get friends => 'assets/icons/friends.svg';
  static String get lock => 'assets/icons/lock.svg';
  static String get lockers => 'assets/icons/lockers.svg';
  static String get settings => 'assets/icons/settings.svg';
  static String get unlock => 'assets/icons/unlock.svg';
  static String get error => 'assets/icons/error.svg';
}
