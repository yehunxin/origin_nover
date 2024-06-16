import 'package:get/get.dart';
import 'package:isar/isar.dart';

import '../../../app/database/app_database.dart';
import '../../../app/database/models/models.dart';
import 'state.dart';

class SourceLogic extends GetxController {
  final SourceState state = SourceState();
  final Isar _isar = AppDatabase.isarInstance;

  @override
  void onReady() {
    super.onReady();
    init();
  }

  void init() {
    // _isar.write((isar) => {
    //       // 做假数据
    //       isar.bookSources.putAll([
    //         BookSource(
    //           id: isar.bookSources.autoIncrement(),
    //           bookSourceName: '测试书源',
    //           bookSourceUrl: 'https://www.baidu.com',
    //         )
    //       ])
    //     });
    state.allSources = _isar.bookSources.where().findAll();
    state.enabledSources =
        state.allSources.where((element) => element.enabled).toList();
    state.disabledSources =
        state.allSources.where((element) => !element.enabled).toList();
    getAllSources();
  }

  /// 获取书源列表
  void getAllSources() {
    state.showSources = state.allSources;
    state.showType = ShowType.all;
    update();
  }

  /// 获取禁用的书源
  void getDisabledSources() {
    state.showSources = state.disabledSources;
    state.showType = ShowType.disabled;
    update();
  }

  /// 获取启用的书源
  void getEnabledSources() {
    state.showSources = state.enabledSources;
    state.showType = ShowType.enabled;
    update();
  }

  void searchSources(String keyword) {
    state.showSources = state.showSources
        .where((element) => element.bookSourceName.contains(keyword))
        .toList();
    update();
  }
}
