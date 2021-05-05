class StringUtils {
  static String enumName(String enumToString) {
    final paths = enumToString.split('.');
    return paths[paths.length - 1];
  }
}

class StringsApp {
  static const String emptyString = '';
  static const String genericError = 'Generic Error';
}
