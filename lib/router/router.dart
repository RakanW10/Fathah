import 'package:fathah/view/detectionPage.dart';
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
    page: () => const Homepage(),
  ),
  GetPage(
    name: RouterName.detectionPage,
    page: () => const DetectionPage(),
  ),
];

abstract class RouterName {
  static String appNavigator = "/";
  static String homepage = "/homepage";
  static String detectionPage = "/detectionPage";
}
