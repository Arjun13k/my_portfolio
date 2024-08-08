import 'package:flutter/material.dart';
import 'package:my_portfolio/view/about/about.dart';
import 'package:my_portfolio/view/contact/contact.dart';
import 'package:my_portfolio/view/homeDetails/profile.dart';

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
        child: Column(
          children: [HomeDetails(), AboutMe(), Contact()],
        ),
      ),
    ]);
  }
}
