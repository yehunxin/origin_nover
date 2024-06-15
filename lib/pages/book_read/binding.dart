import 'package:get/get.dart';

import 'logic.dart';

class BookReadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookReadLogic());
  }
}
