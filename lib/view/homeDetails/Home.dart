import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/controller/functions/functions.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';
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
            padding: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              "Flutter Developer",
                              style: GoogleFonts.allerta(
                                  color: Colors.black, fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Lottie.asset(
                            "asset/image/Animation - 1723384307478.json",
                            fit: BoxFit.fill,
                            width: 100,
                            height: 100),
                      ],
                    ),
                    Text(
                      "ARJUN K",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, fontSize: 75),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: CustomColors.primarywhite,
                        ),
                        TypewriterAnimatedTextKit(
                          text: [' Flutter Developer', 'A friend', 'Student'],
                          textStyle: GoogleFonts.akatab(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          speed: Duration(milliseconds: 200),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "____________",
                          selectionColor: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            SmallFunctions.openLink(
                                'https://www.linkedin.com/in/arjun-k-6a83042ab/');
                          },
                          icon: Image.asset(
                            "asset/image/606491_linkedin_4096x4096.png",
                            color: CustomColors.primarywhite,
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
                            color: CustomColors.primarywhite,
                            scale: 2,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              SmallFunctions.sendEmail(
                                  'arjuarjun207@gmail.com');
                            },
                            icon: Icon(Icons.mail)),
                        IconButton(
                          onPressed: () {
                            SmallFunctions.openLink(
                                'https://www.instagram.com/arj__u____/');
                          },
                          icon: Image.network(
                            "asset/image/R (1).png",
                            color: CustomColors.primarywhite,
                            scale: 80,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.transparent.withOpacity(.4),
                  radius: 300,
                  child: Image.asset(
                    "asset/image/WhatsApp_Image_2024-08-11_at_23.05.31_b7c02688-removebg-preview.png",
                    scale: 1,
                  ),
                ),
              ],
            ),
          )
        : Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Flutter Developer",
                          style: GoogleFonts.allerta(
                              color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Lottie.asset("asset/image/Animation - 1723384307478.json",
                        fit: BoxFit.fill, width: 50, height: 50),
                  ],
                ),
                Text(
                  "ARJUN K",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 45),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: CustomColors.primarywhite,
                    ),
                    TypewriterAnimatedTextKit(
                      text: [' Flutter Developer', 'A friend', 'Student'],
                      textStyle: GoogleFonts.akatab(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      speed: Duration(milliseconds: 200),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent.withOpacity(.1),
                    radius: 200,
                    child: Image.asset(
                      "asset/image/WhatsApp_Image_2024-08-11_at_23.05.31_b7c02688-removebg-preview.png",
                      scale: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "____________",
                      selectionColor: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        SmallFunctions.openLink(
                            'https://www.linkedin.com/in/arjun-k-6a83042ab/');
                      },
                      icon: Image.asset(
                        "asset/image/606491_linkedin_4096x4096.png",
                        color: CustomColors.primarywhite,
                        scale: 80,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        SmallFunctions.openLink('https://github.com/Arjun13k');
                      },
                      icon: Image.asset(
                        "asset/image/GitHub Link.png",
                        color: CustomColors.primarywhite,
                        scale: 2,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          SmallFunctions.sendEmail('arjuarjun207@gmail.com');
                        },
                        icon: Icon(Icons.mail)),
                    IconButton(
                      onPressed: () {
                        SmallFunctions.openLink(
                            'https://www.instagram.com/arj__u____/');
                      },
                      icon: Image.network(
                        "asset/image/R (1).png",
                        color: CustomColors.primarywhite,
                        scale: 80,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
  }
}
