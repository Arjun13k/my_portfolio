import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/global/custom_Button/custom_button.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/view/about/about.dart';
import 'package:my_portfolio/view/contact/contact.dart';
import 'package:my_portfolio/view/homeDetails/Home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<String> navBar = [
    "Home",
    "About",
    "Project",
    "Experience",
    "Contact",
    "Resume"
  ];

  List screens = [HomeDetails(), AboutMe(), Contact()];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen.isWindow(context)
        ? Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Arjun k",
                style: GoogleFonts.sacramento(fontSize: 25),
              ),
              Spacer(),
              Row(
                children: List.generate(
                  navBar.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomButtomsColored(
                      title: navBar[index],
                      isSelected: screenIndex == index,
                      onTap: () {
                        setState(() {
                          screenIndex = index;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => screens[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Drawer(
              child: Column(
                children: List.generate(
                  navBar.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomButtomsColored(
                      title: navBar[index],
                      isSelected: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Drawer(
                              child: Column(
                                children: List.generate(
                                  navBar.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: CustomButtomsColored(
                                      title: navBar[index],
                                      isSelected: screenIndex == index,
                                      onTap: () {
                                        setState(() {
                                          screenIndex = index;
                                        });
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                screens[index],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              width: 15,
                            ),
                          ) ==
                          index,
                      onTap: () {
                        setState(() {
                          screenIndex = index;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => screens[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              width: 15,
            ),
          );
  }
}
