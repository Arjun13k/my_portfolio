import 'package:flutter/material.dart';
import 'package:my_portfolio/controller/home_contoller/home_contoller.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/view/about/about.dart';
import 'package:my_portfolio/view/contact/contact.dart';
import 'package:my_portfolio/view/experience/experience.dart';
import 'package:my_portfolio/view/homeDetails/Home.dart';
import 'package:my_portfolio/view/project/project.dart';
import 'package:provider/provider.dart';

class CenterScreen extends StatefulWidget {
  const CenterScreen({super.key});

  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<HomeScreenContoller>(context);
    return ListView(controller: providerObj.scrollController, children: [
      Container(
        child: Padding(
          padding: ResponsiveScreen.isWindow(context)
              ? const EdgeInsets.symmetric(horizontal: 100)
              : const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              HomeDetails(
                key: providerObj.keys[0],
              ),
              AboutMe(key: providerObj.keys[1]),
              ExperienceScreen(key: providerObj.keys[2]),
              projectScreen(key: providerObj.keys[3]),
              Contact(key: providerObj.keys[4]),
              Text("Designed  and Developed by Arjun k")
            ],
          ),
        ),
      ),
    ]);
  }
}
