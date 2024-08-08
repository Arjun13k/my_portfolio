import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/view/about/about.dart';
import 'package:my_portfolio/view/main/widget/center.dart';
import 'package:my_portfolio/view/main/widget/left.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: LeftScreen(),
      ),
      appBar: ResponsiveScreen.isWindow(context) == false ? AppBar() : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            if (ResponsiveScreen.isWindow(context))
              Expanded(flex: 1, child: LeftScreen()),
            Expanded(flex: 8, child: CenterScreen()),
          ],
        ),
      ),
    );
  }
}
