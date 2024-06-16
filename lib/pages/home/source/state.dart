import '../../../app/database/models/models.dart';

class SourceState {
  late List<BookSource> allSources;
  late List<BookSource> enabledSources;
  late List<BookSource> disabledSources;
  late List<BookSource> showSources;
  late List<BookSearchInfo> searchInfos;
  late ShowType showType;

  SourceState() {
    allSources = [];
    enabledSources = [];
    disabledSources = [];
    searchInfos = [];
    showSources = [];
    showType = ShowType.all;
  }
}

enum ShowType {
  all,
  enabled,
  disabled,
}
