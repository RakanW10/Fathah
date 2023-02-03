import 'package:get/get.dart';

class DetalisPageController extends GetxController {
  bool isReadMore = false;

  void chageReadMore() {
    isReadMore = !isReadMore;
    update();
  }
}
