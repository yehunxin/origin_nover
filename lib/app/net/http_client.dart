import 'dart:async';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../util/log_utils.dart';
import 'interceptor/network_interceptor.dart';

class Http {
  static Http? _instance;

  static Future<void> init() async {
    _instance ??=
        Http._internal(directory: await getApplicationDocumentsDirectory());
  }

  static Http get instance {
    if (_instance == null) {
      throw Exception('在使用Http.instance之前必须调用init');
    }
    return _instance!;
  }

  late final Dio dio = Dio(_options);
  late final PersistCookieJar cookieJar;
  late final CookieManager cookieManager;

  BaseOptions get _options => BaseOptions(
        contentType: Headers.jsonContentType,
        connectTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 10000),
      );

  Http._internal({required Directory directory}) {
    if (!kIsWeb) {
      final String path = '${directory.path}/cookie_jar';

      if (!Directory(path).existsSync()) {
        Directory(path).createSync();
      }
      cookieJar = PersistCookieJar(
        storage: FileStorage(path),
        ignoreExpires: true,
      );

      cookieManager = CookieManager(cookieJar);

      dio.interceptors.add(cookieManager);
    }

    dio.interceptors.addAll(<Interceptor>[
      NetWorkInterceptor(),
    ]);

    if (kDebugMode) {
      final PrettyDioLogger prettyDioLogger = PrettyDioLogger(
        requestHeader: false,
        requestBody: true,
        responseBody: false,
        responseHeader: false,
        error: true,
        compact: true,
        request: true,
        maxWidth: 90,
      );
      // 日志
      dio.interceptors.add(prettyDioLogger);
    }

    dio.interceptors.add(// 重试拦截器
        RetryInterceptor(
      dio: dio,
      logPrint: (message) => {
        LogUtils.d(message),
      }, // 日志打印方法
      retries: 1, // 重试次数
      retryDelays: [
        const Duration(seconds: 1),
      ], // 重试延时
    ));
  }

  Future<Response<T>> request<T>(
    String uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return dio.request(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
