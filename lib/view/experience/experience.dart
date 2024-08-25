import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return context.isWindow()
        ? Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Experience",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Divider(
                indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                color: CustomColors.primarywhite,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "June 2024-Present",
                        style: GoogleFonts.poppins(),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ekatra InfoTech",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      Text(
                        "Flutter Developer (Intern)",
                        style: GoogleFonts.poppins(),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 500),
                        child: Text(
                          maxLines: 9,
                          textAlign: TextAlign.justify,
                          '''Developed cross-platform mobile application using flutter framework for ios and android platforms.Implement complex UI designs and animations using flutter widgets and custom packages.Integrated RESTful APIs and third-party services to fetch and display data in the app.Utilized statement techniques like provider,Riverpod and GetX for managing application state efficiently and expanding skills in backend development using Laravel and Php to full-stack applications. Adept at integrating front-end and back-end technologies to deliver
seamless user experiences''',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      // ConstrainedBox(
                      //   constraints: BoxConstraints(maxWidth: 1000),
                      //   child: Text(
                      //     maxLines: 6,
                      //     "I'm a software developer specializing in cross-platform mobile application development using Flutter framework.I also love exploring new technologies and frameworks to expand my expertise and bring innovative solutions to life.I am eager to contribute to exciting projects and collaborate with like -minded professionals.I enjoy learning new tech so I'm always exploring stuff.  ",
                      //     textAlign: TextAlign.justify,
                      //   ),
                      // ),
                    ],
                  )
                ],
              )
            ],
          ))
        : Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Experience",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Divider(
                indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                color: CustomColors.primarywhite,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ekatra InfoTech",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      Text(
                        "Flutter Developer (Intern)",
                        style: GoogleFonts.poppins(),
                      ),
                      Text(
                        "June 2024-Present",
                        style: GoogleFonts.poppins(),
                        textAlign: TextAlign.start,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 400),
                        child: Text(
                          maxLines: 15,
                          textAlign: TextAlign.justify,
                          '''Developed cross-platform mobile application using flutter framework for ios and android platforms.Implement complex UI designs and animations using flutter widgets and custom packages.Integrated RESTful APIs and third-party services to fetch and display data in the app.Utilized statement techniques like provider,Riverpod and GetX for managing application state efficiently and expanding skills in backend development using Laravel and Php to full-stack applications. Adept at integrating front-end and back-end technologies to deliver
seamless user experiences''',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      // ConstrainedBox(
                      //   constraints: BoxConstraints(maxWidth: 1000),
                      //   child: Text(
                      //     maxLines: 6,
                      //     "I'm a software developer specializing in cross-platform mobile application development using Flutter framework.I also love exploring new technologies and frameworks to expand my expertise and bring innovative solutions to life.I am eager to contribute to exciting projects and collaborate with like -minded professionals.I enjoy learning new tech so I'm always exploring stuff.  ",
                      //     textAlign: TextAlign.justify,
                      //   ),
                      // ),
                    ],
                  )
                ],
              )
            ],
          ));
  }
}
