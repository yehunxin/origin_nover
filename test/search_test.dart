import 'dart:convert';

import 'package:origin_novel/utils/log_utils.dart';

void main() {
  String searchUrl =
      "https://www.tianyabook.com/modules/article/search.php?searchkey={{key}},{\"charset\":\"gbk\",\"headers\":{\"User-Agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\"}}";

  int index = searchUrl.indexOf(',');
  final List<String> temp;
  if (index != -1) {
    temp = [searchUrl.substring(0, index), searchUrl.substring(index + 1)];
  } else {
    temp = [searchUrl];
  }
  LogUtils.i(temp);
  var trans = temp[1];
  final needTrans = trans.contains("'method'") || trans.contains("'charset'");

  if (needTrans) {
    trans = trans.replaceAll("\"", "^");
    // 单引号转换为双引号
    trans = trans.replaceAll("'", "\"");
  }

  LogUtils.i(jsonDecode(trans));
}
