import 'package:flutter/cupertino.dart';

class BookReadState {
  /// 拖动开始位置
  double startDrag = 0.0;

  /// 拖动总量
  double totalDrag = 0.0;

  /// 小说内容
  String bookContent = '';

  /// 是否显示 AppBar
  bool isAppBarVisible = true;

  /// textPainter
  late TextPainter textPainter;

  /// 对内容分页
  int pageSize = 1;
  int currentPage = 0;
  List<String> bookContentList = [''];

  /// 当前屏幕大小
  double screenWidth = 0;
  double screenHeight = 0;

  /// 小说字体配置
  late TextStyle contentStyle;

  /// 是否修改了字体大小
  bool isFontSizeChanged = false;

  /// 每页最多多少行
  int lineCount = -1;

  /// 每页最多多少列
  int charCount = -1;

  BookReadState();
}
