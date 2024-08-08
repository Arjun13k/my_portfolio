import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Contact",
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Divider(
            indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
            endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
            color: CustomColors.primaryBlack,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
