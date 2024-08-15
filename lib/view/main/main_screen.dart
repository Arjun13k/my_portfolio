import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/responsive/responsive.dart';
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
        child: NavBar(),
      ),
      appBar: ResponsiveScreen.isWindow(context) == false
          ? AppBar(
              titleSpacing: 20,
              title: Text(
                "Arjun k",
                style: GoogleFonts.sacramento(fontSize: 25),
              ),
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          children: [
            if (ResponsiveScreen.isWindow(context))
              Expanded(flex: 1, child: NavBar()),
            Expanded(flex: 8, child: CenterScreen()),
          ],
        ),
      ),
    );
  }
}
