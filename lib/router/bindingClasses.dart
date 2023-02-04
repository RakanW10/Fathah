import 'package:fathah/controller/detectionPageController.dart';
import 'package:get/get.dart';

class AppNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetectionPageController());
  }
}
