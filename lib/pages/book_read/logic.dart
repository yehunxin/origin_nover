import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:origin_novel/app/theme/app_theme.dart';
import 'package:origin_novel/generated/assets.dart';
import 'package:origin_novel/util/dialog/dialog_utils.dart';
import 'package:origin_novel/util/log_utils.dart';

import 'state.dart';

class BookReadLogic extends GetxController {
  final BookReadState state = BookReadState();

  @override
  void onInit() {
    super.onInit();
    state.bookContentScrollController = ScrollController();
  }

  @override
  void onReady() {
    super.onReady();
    loadChapter(chapter: '1');
  }

  @override
  void onClose() {
    state.bookContentScrollController.dispose();
    super.onClose();
  }

  void onDragStart(DragStartDetails details) {
    state.startDrag = details.globalPosition.dx;
    state.totalDrag = 0.0;
  }

  void onDragUpdate(DragUpdateDetails details) {
    state.totalDrag += details.delta.dx;
  }

  void onDragEnd(DragEndDetails details) {
    if (state.totalDrag < 0) {
      // 处理向左滑动的逻辑
      nextPage();
    } else if (state.totalDrag > 0) {
      // 处理向右滑动的逻辑
      previousPage();
    }
    // 重置滑动偏移量
    state.totalDrag = 0.0;
  }

  /// 切换 AppBar 显示隐藏
  void toggleAppBarVisibility() {
    state.isAppBarVisible = !state.isAppBarVisible;
    update();
  }

  /// 上一页
  void previousPage() {
    if (state.currentPage > 0) {
      state.currentPage--;
      update();
    } else {
      previousChapter();
    }
  }

  /// 下一页
  void nextPage() {
    if (state.currentPage < state.pageSize - 1) {
      state.currentPage++;
      update();
    } else {
      nextChapter();
    }
  }

  /// 加载章节
  Future<void> loadChapter({required String chapter}) async {
    DialogUtils.loading();
    state.bookContent = await rootBundle.loadString(Assets.contentChapterI);
    _splitBookContent();
    update();
    await DialogUtils.dismiss();
  }

  /// 上一章
  Future<void> previousChapter() async {
    DialogUtils.loading();
    state.bookContent = await rootBundle.loadString(Assets.contentChapterI);
    _splitBookContent();
    update();
    // 滚动到顶部
    await state.bookContentScrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    await DialogUtils.dismiss();
  }

  /// 下一章
  Future<void> nextChapter() async {
    LogUtils.d('下一章');
    DialogUtils.loading();
    state.bookContent = await rootBundle.loadString(Assets.contentChapterIi);
    _splitBookContent();
    update();
    // 滚动到顶部
    await state.bookContentScrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    await DialogUtils.dismiss();
  }

  /// 将书的内容分页
  void _splitBookContent() {
    _calculate();
    // 首先对内容分割
    final List<String> contentLineList = state.bookContent.split('\n');
    int maxLineLength = contentLineList.length;
    int currentLine = 0;
    // 遍历每一行
    while (currentLine < maxLineLength) {
      List<String> currentPageContent = [];
      int traversalLength = 0;

      for (traversalLength;
          traversalLength < (min(state.lineCount, contentLineList.length));
          traversalLength++) {
        // 获取当前行的长度
        var line = contentLineList[traversalLength];
        final strLength = line.length;

        // 跳过空行
        // if (line == '\r' || strLength == 0) {
        //   currentLine++;
        //   continue;
        // }

        currentPageContent.add(line);
        // 如果当前行的长度大于最大长度
        if (strLength > state.charCount) {
          final ceil = (strLength / state.charCount).ceil();
          currentLine += ceil;
          continue;
        }
        currentLine++;
      }
      // 结束后添加到列表中
      // 删除头尾的空行
      if (currentPageContent.first.isEmpty ||
          currentPageContent.first == '\r') {
        currentPageContent.removeAt(0);
      }
      if (currentPageContent.last.isEmpty || currentPageContent.last == '\r') {
        currentPageContent.removeLast();
      }

      state.bookContentList.add(currentPageContent.join('\n'));
      // 移除contentLineList前面内容
      contentLineList.removeRange(0, traversalLength);
    }
    state.pageSize = state.bookContentList.length;
  }

  /// 计算页面最多放多少行文字和每行多少个字
  void _calculate() {
    final BuildContext context = Get.context!;
    // 计算页面最多放多少行文字
    double screenHeight = context.height;
    double screenWidth = context.width;
    // 如果屏幕大小和之前一样，则不需要重新计算
    if (screenWidth == state.screenWidth &&
        screenHeight == state.screenHeight &&
        !state.isFontSizeChanged &&
        state.lineCount != -1 &&
        state.charCount != -1) {
      return;
    }

    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: "测",
        style: TextStyle(
          fontSize: state.fontSize,
          height: state.fontHeight,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: state.fontSize * 2);
    // 一个文字大小
    final fontHeight = textPainter.height;
    final fontWidth = textPainter.width;
    LogUtils.d('fontHeight: $fontHeight, fontWidth: $fontWidth');
    // 计算每行多少个字
    final double lineWidth = screenWidth - BookReadTheme.padding * 2;
    final double lineHeight = screenHeight - BookReadTheme.padding * 2;
    // 向上取整
    final int lineCount = (lineHeight / fontHeight).floor();
    final int charCount = (lineWidth / fontWidth).ceil();
    state.lineCount = lineCount;
    state.charCount = charCount;
    state.screenWidth = screenWidth;
    state.screenHeight = screenHeight;
  }
}
