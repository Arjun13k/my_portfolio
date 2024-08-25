import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenContoller with ChangeNotifier {
  ScrollController scrollController = ScrollController();
  int screenIndex = 0;

  List<GlobalKey> keys = List.generate(
    5,
    (index) => GlobalKey(),
  );
  // BuildContext? tabContext;
  bool showBackToTop = false;
  HomeScreenContoller() {
    _initListener();
  }

  void _initListener() {
    scrollController.addListener(
      () {
        var offset = scrollController.offset;
        // log('$showBackToTop : $offset');
        if (showBackToTop && offset < 100) {
          showBackToTop = !showBackToTop;
          notifyListeners();
        } else if (!showBackToTop && offset >= 100) {
          showBackToTop = !showBackToTop;
          notifyListeners();
        }
      },
    );
    scrollController.addListener(scrollListener);
  }

  //remove scroll physics
  removeScrollPhysics() {
    // scrollPhysics = null;
    notifyListeners();
  }

  // ScrollController Listener for scrolling listview and tabbar
  void scrollListener() {
    // if (tabContext == null) {
    //   return;
    // }
    double scrollOffset = scrollController.offset;
    // logic to scroll tab bar index
    // double childPosition = 0;
    for (var i = keys.length - 1; i >= 0; i--) {
      final context = keys[i].currentContext;
      if (context != null) {
        // Get the offset of the widget
        final box = context.findRenderObject() as RenderBox;
        final childOffset = box.localToGlobal(Offset.zero,
            ancestor: context.findRenderObject()?.parent as RenderObject);
        // log(' child offet : $offset');
        // Scroll to the offset
        /* +
            scrollController.offset */
        if (scrollOffset >= childOffset.dy - kToolbarHeight) {
          // DefaultTabController.of(tabContext!).animateTo(
          //   i,
          // );
          screenIndex = i;
          notifyListeners();
          break;
        }
      }
      // print('iteration $i\n child Position = $childPosition');
    }
    // print('offset : ${_scrollController.offset}');
  }

  Future<void> scrollToChild(GlobalKey key) async {
    final context = key.currentContext;
    scrollController.removeListener(scrollListener);
    if (context != null) {
      // Get the offset of the widget
      final box = context.findRenderObject() as RenderBox;
      final offset = box.localToGlobal(Offset.zero,
          ancestor: context.findRenderObject()?.parent as RenderObject);
      // log(' child offet : $offset');
      // Scroll to the offset
      await scrollController.animateTo(
        offset.dy /* +
            scrollController.offset */
        , // Adjust for current scroll position
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
    scrollController.addListener(scrollListener);
  }
}
