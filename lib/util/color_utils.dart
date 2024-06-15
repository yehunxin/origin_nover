import 'dart:ui';

class ColorUtils {
  /// 根据字符串生成颜色
  static Color randomColorByStr(String str) {
    int hash = 0;
    for (int i = 0; i < str.length; i++) {
      hash = str.codeUnitAt(i) + ((hash << 5) - hash);
    }
    final int finalHash = hash.abs() % 0xffffff;
    // 在颜色值的最高位加上0xff作为alpha值，确保颜色不透明
    final int colorValue = (0xff << 24) | finalHash;
    return Color(colorValue);
  }
}
