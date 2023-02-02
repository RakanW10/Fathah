import 'package:fathah/view/homepage.dart';
import 'package:fathah/view/AppNavigator.dart';
import 'package:get/get.dart';

List<GetPage> router = [
  GetPage(
    name: RouterName.appNavigator,
    page: () => AppNavigator(),
  ),
  GetPage(
    name: RouterName.homepage,
    page: () => Homepage(),
  ),
];

abstract class RouterName {
  static String appNavigator = "/";
  static String homepage = "/homepage";
}
