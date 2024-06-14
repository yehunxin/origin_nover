import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:origin_novel/app/routes/app_pages.dart';
import 'package:origin_novel/app/theme/app_theme.dart';
import 'package:origin_novel/database/app_database.dart';

import 'app/l10n/generated/l10n.dart';
import 'app/net/http_client.dart';
import 'app/routes/app_routes.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized()是一个静态方法，
  // 它会初始化Flutter的Widgets库。这个方法通常在你的应用程序的main()函数中调用，
  // 特别是在你的应用程序需要在runApp()之前执行异步操作时。
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化dio
  await Http.init();
  // 初始化isar
  await AppDatabase.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '起源小说',
      // 未知路由
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const Scaffold(
          body: Center(
            child: Text('404'),
          ),
        ),
      ),
      builder: FlutterSmartDialog.init(),
      navigatorObservers: <NavigatorObserver>[FlutterSmartDialog.observer],
      navigatorKey: Get.key,
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        S.delegate,
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate, // 指定默认的文本排列方向, 由左到右或由右到左
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
