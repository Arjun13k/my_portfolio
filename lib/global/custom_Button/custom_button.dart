// import 'package:flutter/material.dart';
// import 'package:my_portfolio/global/custom_Color/custom_color.dart';

// class CustomButtomsColored extends StatelessWidget {
//   const CustomButtomsColored({super.key, required this.title, this.isSelected});
//   final String title;
//   final bool? isSelected;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 64,
//       height: 25,
//       child: Center(
//         child: Text(
//           title,
//           style: TextStyle(color: CustomColors.primarywhite),
//         ),
//       ),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           color: CustomColors.primaryBlack),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';

class CustomButtomsColored extends StatelessWidget {
  const CustomButtomsColored({
    super.key,
    required this.title,
    this.isSelected = false,
    required this.onPressed,
  });

  final String title;
  final bool isSelected;
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
              color: isSelected
                  ? CustomColors.primarywhite
                  : CustomColors.primaryBlack,
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isSelected ? CustomColors.primaryBlack : Colors.transparent),
      ),
    );
  }
}
