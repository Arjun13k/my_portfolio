import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key, this.appTitle, this.link, this.images});
  final String? appTitle;
  final dynamic link;
  final List<String>? images;

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            context.isWindow()
                ? Expanded(
                    child: Container(
                      child: CarouselSlider(
                        items: widget.images
                            ?.map((ImagePath) => Image.asset(
                                  ImagePath,
                                  fit: BoxFit.fitWidth,
                                ))
                            .toList(),
                        options: CarouselOptions(
                          height: 450,
                          autoPlay: true,
                          enlargeCenterPage: true,
                        ),
                      ),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.black,
                      ),
                    ),
                  )
                : Container(
                    child: CarouselSlider(
                      items: widget.images
                          ?.map((ImagePath) => Image.asset(
                                ImagePath,
                                fit: BoxFit.fitWidth,
                              ))
                          .toList(),
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                    ),
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // color: Colors.black,
                    ),
                  ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.appTitle.toString(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          widget.link[index].toString(),
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: (widget.link as List).length),
            ),
            Spacer(),
            Center(
              child: Expanded(
                child: Container(
                  width: 350,
                  height: 50,
                  child: Center(child: Text("View on Github")),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.2)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
