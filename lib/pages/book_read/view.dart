import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/theme/app_theme.dart';
import 'widget/book_read_page_bottom_button.dart';

import '../../app/l10n/generated/l10n.dart';

const double appBarHeight = 56.0;

class BookReadPage extends StatefulWidget {
  const BookReadPage({super.key});

  @override
  State<BookReadPage> createState() => _BookReadPageState();
}

class _BookReadPageState extends State<BookReadPage> {
  bool _isAppBarVisible = true;
  Timer? _hideAppBarTimer;

  @override
  void dispose() {
    _hideAppBarTimer?.cancel();
    super.dispose();
  }

  void _toggleAppBarVisibility() {
    setState(() {
      _isAppBarVisible = !_isAppBarVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 文本内容
          _buildContent(),
          // 可隐藏的 AppBar
          _buildAppBar(),
          // 可隐藏的 BottomNavigationBar
          _buildBottomNavigationBar(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return AnimatedContainer(
      height: _isAppBarVisible ? appBarHeight : 0.0,
      duration: const Duration(milliseconds: 200),
      child: AppBar(
        title: const Text('小说标题'),
        backgroundColor:
        context.theme.appBarTheme.backgroundColor?.withOpacity(0.5),
      ),
    );
  }

  Widget _buildContent() {
    return GestureDetector(
      onTap: _toggleAppBarVisibility,
      child: SingleChildScrollView(
        // 避免内容被 AppBar 遮挡
        child: Container(
          width: context.width,
          height: context.height,
          padding: const EdgeInsets.all(BookReadTheme.padding),
          child: const Text(
            '这里是小说的内容……',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: AnimatedContainer(
        height: _isAppBarVisible ? 58.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        // 半透明
        color: context.theme.colorScheme.surface.withOpacity(0.0),
        // 底部菜单栏
        child: Column(
          children: [
            // 上一章 下一章
            _buildChangeChaptersButtons()
            // 功能栏
            _buildFunctionBar(),
          ],
        ),
      ),
    );
  }

  Row _buildChangeChaptersButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: BookReadTheme.padding),
          child: TextButton(
            onPressed: () {
              // TODO: 上一章
            },
            child: Text(S
                .of(context)
                .previousChapter),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: BookReadTheme.padding),
          child: TextButton(
            onPressed: () {
              // TODO: 下一章
            },
            child: Text(S
                .of(context)
                .nextChapter),
          ),
        ),
      ],
    );
  }

  Widget _buildFunctionBar() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // TODO 目录
        // TODO 缓存
        // TODO 翻页
        // 阅读设置
        BookReadPageBottomButton(),
      ],
    );
  }
}
