import 'dart:io';

class PlatformUtils {
  const PlatformUtils._();

  static bool isDesktop() {
    return Platform.isWindows || Platform.isLinux || Platform.isMacOS;
  }
}
