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
