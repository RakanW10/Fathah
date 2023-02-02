import 'package:get/get.dart';

class AppNavigatorController extends GetxController {
  int _pageIndex = 0;
  get pageIndex => _pageIndex;

  void changePage(index) {
    _pageIndex = index;
    update();
  }
  
}
