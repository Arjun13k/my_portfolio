// import 'package:flutter/material.dart';
// import 'package:my_portfolio/global/custom_Color/custom_color.dart';

// class CustomButtomUncolored extends StatelessWidget {
//   const CustomButtomUncolored(
//       {super.key, required this.title, this.isUnselected, this.border});
//   final String title;
//   final bool? isUnselected;
//   final Border? border;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 64,
//       height: 25,
//       child: Center(
//         child: Text(
//           title,
//           style: TextStyle(color: CustomColors.primaryBlack),
//         ),
//       ),
//       decoration:
//           BoxDecoration(borderRadius: BorderRadius.circular(6), border: border),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';

class CustomButtomUncolored extends StatelessWidget {
  const CustomButtomUncolored({
    super.key,
    required this.title,
    this.isUnselected = false,
    required this.onPressed,
  });

  final String title;
  final bool isUnselected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 64,
        height: 25,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isUnselected
                  ? CustomColors.primaryBlack
                  : CustomColors.primarywhite,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: CustomColors.primaryBlack),
        ),
      ),
    );
  }
}
