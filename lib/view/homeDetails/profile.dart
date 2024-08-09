import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/functions/functions.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({super.key});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen.isWindow(context)
        ? Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/159136735?v=4"),
                  maxRadius: 80,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hi,I'm ",
                      style: GoogleFonts.allerta(),
                    ),
                    Text(
                      "Arjun k",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    Text(
                      "I'm a Flutter Developer",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      "Crafting beautiful,high-perfomance cross-platform mobile application with flutter",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            SmallFunctions.openLink(
                                'https://www.linkedin.com/in/arjun-k-6a83042ab/');
                          },
                          icon: Image.asset(
                            "asset/image/606491_linkedin_4096x4096.png",
                            scale: 80,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            SmallFunctions.openLink(
                                'https://github.com/Arjun13k');
                          },
                          icon: Image.asset(
                            "asset/image/GitHub Link.png",
                            scale: 2,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              SmallFunctions.sendEmail(
                                  'arjuarjun207@gmail.com');
                            },
                            icon: Icon(Icons.mail))
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        : Container(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/159136735?v=4"),
                  maxRadius: 80,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hi,I'm ",
                  style: GoogleFonts.allerta(),
                ),
                Text(
                  "Arjun k",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Text(
                  "I'm a Flutter Developer",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w400, fontSize: 20),
                ),
                Text(
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  "Crafting beautiful,high-perfomance cross-platform mobile application with flutter",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "asset/image/606491_linkedin_4096x4096.png",
                        scale: 80,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "asset/image/GitHub Link.png",
                        scale: 2,
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.mail))
                  ],
                )
              ],
            ),
          );
  }
}
