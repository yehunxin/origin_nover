import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

/// 网络拦截器
class NetWorkInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    // 检查网络是否可用
    if (connectivityResult.contains(ConnectivityResult.none)) {
      // 等待一段时间后再次检查网络
      await Future<void>.delayed(
        Duration(milliseconds: Random().nextInt(500) + 500),
        () async {
          connectivityResult = await (Connectivity().checkConnectivity());
        },
      );
      if (connectivityResult.contains(ConnectivityResult.none)) {
        // 网络依然不可用拒绝请求
        handler.reject(
          DioException(
            requestOptions: options,
            error: const AppException(
              code: AppException.networkExceptionStatusCode,
              message: '网络异常，请检查网络连接',
            ),
          ),
        );
        return;
      }
    }

    super.onRequest(options, handler);
  }
}

class AppException {
  static const int timeoutStatusCode = -1;
  static const int networkExceptionStatusCode = -2;
  static const int cancelRequestStatusCode = -3;

  final int code;
  final String? message;

  const AppException({
    required this.code,
    this.message,
  });

  String get errorMessage => '$message($code)';
}
