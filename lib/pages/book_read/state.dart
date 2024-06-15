import 'package:flutter/cupertino.dart';

class BookReadState {
  /// 拖动开始位置
  double startDrag = 0.0;

  /// 拖动总量
  double totalDrag = 0.0;

  /// 小说内容
  late String bookContent;

  /// 是否显示 AppBar
  late bool isAppBarVisible;

  /// 小说内容滚动控制器
  late final ScrollController bookContentScrollController;

  /// 对内容分页
  late int pageSize;
  late int currentPage;
  late List<String> bookContentList;

  /// 当前屏幕大小
  late double screenWidth;
  late double screenHeight;

  /// 小说字体配置
  late double fontSize;
  late double fontHeight;

  /// 是否修改了字体大小
  late bool isFontSizeChanged;

  /// 每页最多多少行
  late int lineCount;

  /// 每页最多多少列
  late int charCount;

  BookReadState() {
    lineCount = -1;
    charCount = -1;
    fontSize = 18.0;
    fontHeight = 1.5;
    bookContent = '';
    isAppBarVisible = true;
    isFontSizeChanged = false;
    currentPage = 0;
    pageSize = 0;
    bookContentList = [];
    screenWidth = 0;
    screenHeight = 0;
  }
}
