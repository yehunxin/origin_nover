import 'package:get/get.dart';

import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();

  /// 页面切换
  void changePageIndex(int index) {
    state.pageIndex = index;
    update();
  }
}
