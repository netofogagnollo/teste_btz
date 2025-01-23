abstract class Format {
  static String formatUrl() {
    var url = '';
    return (url);
  }

  static formatTimestamp() {
    return (DateTime.now().millisecondsSinceEpoch.toString().substring(0, 10));
  }
}
