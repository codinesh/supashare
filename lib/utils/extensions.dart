import 'dart:ui';

extension ColorExt on Color {
  Color? fromString(String str) {
    str = str.replaceAll('#', '');
    if (str.length == 6) {
      return Color(int.parse(str.substring(1, 7), radix: 16) + 0xFF000000);
    } else {
      return Color(int.parse(str.substring(1), radix: 16));
    }
  }
}

Color getColorFromString(String str) {
  str = str.replaceAll('#', '');
  if (str.length == 6) {
    return Color(int.parse(str.substring(0, 6), radix: 16) + 0xFF000000);
  } else {
    return Color(int.parse(str.substring(1), radix: 16));
  }
}
