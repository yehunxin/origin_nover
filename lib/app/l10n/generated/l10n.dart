// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `启用`
  String get enabled {
    return Intl.message(
      '启用',
      name: 'enabled',
      desc: '',
      args: [],
    );
  }

  /// `禁用`
  String get disabled {
    return Intl.message(
      '禁用',
      name: 'disabled',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get cancel {
    return Intl.message(
      '取消',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `提示`
  String get tips {
    return Intl.message(
      '提示',
      name: 'tips',
      desc: '',
      args: [],
    );
  }

  /// `警告`
  String get warning {
    return Intl.message(
      '警告',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `删除`
  String get delete {
    return Intl.message(
      '删除',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `确定`
  String get ok {
    return Intl.message(
      '确定',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `目录`
  String get directory {
    return Intl.message(
      '目录',
      name: 'directory',
      desc: '',
      args: [],
    );
  }

  /// `设置`
  String get setting {
    return Intl.message(
      '设置',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `缓存`
  String get cache {
    return Intl.message(
      '缓存',
      name: 'cache',
      desc: '',
      args: [],
    );
  }

  /// `清除`
  String get clear {
    return Intl.message(
      '清除',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `翻页`
  String get flip {
    return Intl.message(
      '翻页',
      name: 'flip',
      desc: '',
      args: [],
    );
  }

  /// `第{page}页`
  String pageN(int page) {
    return Intl.message(
      '第$page页',
      name: 'pageN',
      desc: '',
      args: [page],
    );
  }

  /// `上一章`
  String get previousChapter {
    return Intl.message(
      '上一章',
      name: 'previousChapter',
      desc: '',
      args: [],
    );
  }

  /// `下一章`
  String get nextChapter {
    return Intl.message(
      '下一章',
      name: 'nextChapter',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
