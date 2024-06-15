import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:origin_novel/pages/home/book/view.dart';
import 'package:origin_novel/pages/home/download/view.dart';
import 'package:origin_novel/pages/home/logic.dart';
import 'package:origin_novel/pages/home/setting/view.dart';
import 'package:origin_novel/pages/home/source/view.dart';
import 'package:origin_novel/pages/home/state.dart';
import 'package:origin_novel/util/platform_utils.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final logic = Get.find<HomeLogic>();
  final state = Get.find<HomeLogic>().state;
  final pages = [
    BookPage(),
    DownloadPage(),
    SourcePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (logic) {
      return Scaffold(
        body: Row(
          children: [
            if (PlatformUtils.isDesktop())
              HomeNavigationRail(state: state, logic: logic),
            Expanded(
              child: SafeArea(
                child: IndexedStack(
                  index: state.pageIndex,
                  children: pages,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: PlatformUtils.isDesktop()
            ? null
            : BottomNavigationBar(
                currentIndex: state.pageIndex,
                onTap: logic.changePageIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: '书架',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.download),
                    label: '下载',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.source),
                    label: '书源',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: '设置',
                  ),
                ],
              ),
      );
    });
  }
}

class HomeNavigationRail extends StatelessWidget {
  const HomeNavigationRail(
      {super.key, required this.state, required this.logic});

  final HomeState state;
  final HomeLogic logic;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      labelType: NavigationRailLabelType.all,
      selectedIndex: state.pageIndex,
      onDestinationSelected: logic.changePageIndex,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.book),
          label: Text('书架'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.download),
          label: Text('下载'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.source),
          label: Text('书源'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.settings),
          label: Text('设置'),
        ),
      ],
    );
  }
}
