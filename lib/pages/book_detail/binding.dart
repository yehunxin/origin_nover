import 'package:get/get.dart';

import 'logic.dart';

class BookDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookDetailLogic());
  }
}
