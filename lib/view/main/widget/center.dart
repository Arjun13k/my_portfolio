import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/view/about/about.dart';
import 'package:my_portfolio/view/contact/contact.dart';
import 'package:my_portfolio/view/experience/experience.dart';
import 'package:my_portfolio/view/homeDetails/Home.dart';
import 'package:my_portfolio/view/project/project.dart';

class CenterScreen extends StatefulWidget {
  const CenterScreen({super.key});

  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        child: Padding(
          padding: ResponsiveScreen.isWindow(context)
              ? const EdgeInsets.symmetric(horizontal: 100)
              : const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              HomeDetails(),
              AboutMe(),
              ExperienceScreen(),
              projectScreen(),
              Contact(),
              Text("Designed  and Developed by Arjun k")
            ],
          ),
        ),
      ),
    ]);
  }
}
