import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Dummy_data/dummy_data.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/view/project/project_widget/project_widget.dart';
import 'package:provider/provider.dart';

class projectScreen extends StatefulWidget {
  const projectScreen({super.key});

  @override
  State<projectScreen> createState() => _projectScreenState();
}

class _projectScreenState extends State<projectScreen> {
  @override
  Widget build(BuildContext context) {
    final details = Provider.of<ProjectDetails>(context);
    return Container(
      child: Column(
        children: [
          Text(
            "Projects",
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Divider(
            indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
            endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
            color: CustomColors.primarywhite,
            thickness: 2,
          ),
          SizedBox(
            height: 5,
          ),
          GridView(
              shrinkWrap: true,
              children: List.generate(
                details.projectTitle.length,
                (index) => ProjectWidget(
                  images: details.images[details.projectTitle[index]]
                      .cast<String>(),
                  link: details.source[details.projectTitle[index]],
                  appTitle: details.projectTitle[index],
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: context.isWindow() ? 2 : 1,
              )),
        ],
      ),
    );
  }
}
