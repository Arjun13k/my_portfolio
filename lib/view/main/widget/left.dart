// import 'package:flutter/material.dart';
// import 'package:my_portfolio/global/custom_Button/customButtonUncolored.dart';
// import 'package:my_portfolio/global/custom_Button/custom_button.dart';
// import 'package:my_portfolio/responsive/responsive.dart';

// class LeftScreen extends StatefulWidget {
//   const LeftScreen({super.key});

//   @override
//   State<LeftScreen> createState() => _LeftScreenState();
// }

// class _LeftScreenState extends State<LeftScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ResponsiveScreen.isWindow(context)
//           ? Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Row(
//                 children: [
//                   Row(
//                     children: [Text("name")],
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       CustomButtomsColored(
//                         title: "Home",
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       CustomButtomsColored(
//                         title: "About",
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       CustomButtomsColored(
//                         title: "Project",
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       CustomButtomsColored(
//                         title: "Contact",
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       CustomButtomsColored(
//                         title: "Resume",
//                       ),
//                       CustomButtomUncolored(
//                         title: "home",
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           : Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text("Home"),
//                 Text("Home"),
//                 Text("Home"),
//                 Text("Home"),
//                 // CustomButtoms()
//               ],
//             ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_portfolio/global/custom_Button/custom_button.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class LeftScreen extends StatefulWidget {
  const LeftScreen({super.key});

  @override
  State<LeftScreen> createState() => _LeftScreenState();
}

class _LeftScreenState extends State<LeftScreen> {
  String selectedButton = "Home";

  void onButtonPressed(String title) {
    setState(() {
      selectedButton = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveScreen.isWindow(context)
          ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      // Text("Arjun k",
                      //     style: GoogleFonts.inter(fontWeight: FontWeight.bold)
                      //     //  TextStyle(
                      //     fontWeight: FontWeight.w600,
                      //     fontStyle: FontStyle.italic),
                      // )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtomsColored(
                        title: "Home",
                        isSelected: selectedButton == "Home",
                        onPressed: () => onButtonPressed("Home"),
                      ),
                      SizedBox(width: 10),
                      CustomButtomsColored(
                        title: "About",
                        isSelected: selectedButton == "About",
                        onPressed: () => onButtonPressed("About"),
                      ),
                      SizedBox(width: 10),
                      CustomButtomsColored(
                        title: "Project",
                        isSelected: selectedButton == "Project",
                        onPressed: () => onButtonPressed("Project"),
                      ),
                      SizedBox(width: 10),
                      CustomButtomsColored(
                        title: "Contact",
                        isSelected: selectedButton == "Contact",
                        onPressed: () => onButtonPressed("Contact"),
                      ),
                      SizedBox(width: 10),
                      CustomButtomsColored(
                        title: "Resume",
                        isSelected: selectedButton == "Resume",
                        onPressed: () => onButtonPressed("Resume"),
                      ),
                      // CustomButtomUncolored(
                      //   title: "Uncolored",
                      //   isUnselected: selectedButton == "Uncolored",
                      //   onPressed: () => onButtonPressed("Uncolored"),
                      // ),
                    ],
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButtomsColored(
                    title: "Home",
                    isSelected: selectedButton == "Home",
                    onPressed: () => onButtonPressed("Home"),
                  ),
                  SizedBox(height: 10),
                  CustomButtomsColored(
                    title: "About",
                    isSelected: selectedButton == "About",
                    onPressed: () => onButtonPressed("About"),
                  ),
                  SizedBox(height: 10),
                  CustomButtomsColored(
                    title: "Project",
                    isSelected: selectedButton == "Project",
                    onPressed: () => onButtonPressed("Project"),
                  ),
                  SizedBox(height: 10),
                  CustomButtomsColored(
                    title: "Contact",
                    isSelected: selectedButton == "Contact",
                    onPressed: () => onButtonPressed("Contact"),
                  ),
                  SizedBox(height: 10),
                  CustomButtomsColored(
                    title: "Resume",
                    isSelected: selectedButton == "Resume",
                    onPressed: () => onButtonPressed("Resume"),
                  ),
                ],
              ),
            ),
    );
  }
}
