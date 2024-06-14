import 'package:get/get.dart';
import 'package:origin_novel/pages/home/book/logic.dart';
import 'package:origin_novel/pages/home/download/logic.dart';
import 'package:origin_novel/pages/home/setting/logic.dart';
import 'package:origin_novel/pages/home/source/logic.dart';
import 'logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => BookLogic());
    Get.lazyPut(() => DownloadLogic());
    Get.lazyPut(() => SettingLogic());
    Get.lazyPut(() => SourceLogic());
  }
}
