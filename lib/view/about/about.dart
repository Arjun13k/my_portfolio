import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/skills.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen.isWindow(context)
        ? Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Divider(
                  indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  color: CustomColors.primarywhite,
                  thickness: 2,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1250),
                  child: Text(
                    maxLines: 6,
                    "I'm a software developer specializing in cross-platform mobile application development using Flutter framework.I also love exploring new technologies and frameworks to expand my expertise and bring innovative solutions to life.I am eager to contribute to exciting projects and collaborate with like -minded professionals.I enjoy learning new tech so I'm always exploring stuff.  ",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  "Skills",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Divider(
                  indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  color: CustomColors.primarywhite,
                  thickness: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    Skills.skills.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: CustomColors.primarywhite)),
                        padding: EdgeInsets.all(10),
                        child: Text(Skills.skills[index]),
                      ),
                    ),
                  )
                  // Expanded(
                  //   child: ListView.separated(
                  //     scrollDirection: Axis.horizontal,
                  //     shrinkWrap: true,
                  //     itemBuilder: (context, index) => Container(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Text(Skills.skills[index]),
                  //     ),
                  //     separatorBuilder: (context, index) => SizedBox(
                  //       width: 10,
                  //     ),
                  //     itemCount: Skills.skills.length,
                  //   ),
                  // ),
                  ,
                )
                // Column(
                //     children: List.generate(
                //       Skills.skills.length,
                //       (index) => Container(
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             border: Border.all(
                //                 width: 1, color: CustomColors.primarywhite)),
                //         child: Text(Skills.skills[index]),
                //       ),
                //     ),
                //   ),
              ],
            ),
          )
        : Container(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Divider(
                  indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  color: CustomColors.primarywhite,
                  thickness: 2,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: Text(
                    maxLines: 6,
                    "I'm a software developer specializing in cross-platform mobile application development using Flutter framework.I also love exploring new technologies and frameworks to expand my expertise and bring innovative solutions to life.I am eager to contribute to exciting projects and collaborate with like -minded professionals.I enjoy learning new tech so I'm always exploring stuff.  ",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  "Skills",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Divider(
                  indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
                  color: CustomColors.primarywhite,
                  thickness: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                // Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: List.generate(
                //           Skills.skills.length,
                //           (index) => Container(
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(10),
                //                 border: Border.all(
                //                     width: 1, color: CustomColors.primarywhite)),
                //             padding: EdgeInsets.all(10),
                //             child: Text(Skills.skills[index]),
                //           ),
                //         )
                // Expanded(
                //   child: ListView.separated(
                //     scrollDirection: Axis.horizontal,
                //     shrinkWrap: true,
                //     itemBuilder: (context, index) => Container(
                //       padding: EdgeInsets.all(8.0),
                //       child: Text(Skills.skills[index]),
                //     ),
                //     separatorBuilder: (context, index) => SizedBox(
                //       width: 10,
                //     ),
                //     itemCount: Skills.skills.length,
                //   ),
                // ),
                //   ,
                // )
                Wrap(
                  alignment: WrapAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    Skills.skills.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: CustomColors.primarywhite)),
                        child: Text(Skills.skills[index]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
