import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/home_contoller/home_contoller.dart';
import 'package:my_portfolio/global/custom_Button/custom_button.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:provider/provider.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<String> navBar = [
    "Home",
    "About",
    "Experience",
    "Project",
    "Contact",
    "Resume"
  ];

  // List screens = [HomeDetails(), AboutMe(), Contact()];
  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<HomeScreenContoller>(context);
    return Consumer<HomeScreenContoller>(
      builder: (context, value, child) => ResponsiveScreen.isWindow(context)
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
                        isSelected: providerObj.screenIndex == index,
                        onTap: () {
                          if (index == 5) {
                          } else {
                            setState(() {
                              providerObj.screenIndex = index;
                            });
                            providerObj.scrollToChild(providerObj.keys[index]);
                          }
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
                                        isSelected:
                                            providerObj.screenIndex == index,
                                        onTap: () {
                                          if (index == 5) {
                                          } else {
                                            setState(() {
                                              providerObj.screenIndex = index;
                                            });
                                            providerObj.scrollToChild(
                                                providerObj.keys[index]);
                                          }
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
                          if (index == 5) {
                          } else {
                            setState(() {
                              providerObj.screenIndex = index;
                            });
                            providerObj.scrollToChild(providerObj.keys[index]);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                width: 15,
              ),
            ),
    );
  }
}
