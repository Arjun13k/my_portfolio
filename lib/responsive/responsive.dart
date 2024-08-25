import 'package:flutter/cupertino.dart';

class ResponsiveScreen {
  static bool ismobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 500;
  }

  static bool isTab(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 500 &&
        MediaQuery.sizeOf(context).width <= 1000;
  }

  static bool isWindow(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 1000;
  }
}

// we can call  this on context.method/function
extension responsive on BuildContext {
  bool ismobile() {
    return MediaQuery.sizeOf(this).width < 500;
  }

  bool isTab() {
    return MediaQuery.sizeOf(this).width >= 500 &&
        MediaQuery.sizeOf(this).width <= 1000;
  }

  bool isWindow() {
    return MediaQuery.sizeOf(this).width > 1000;
  }
}
