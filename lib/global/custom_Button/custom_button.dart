import 'package:flutter/material.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';

class CustomButtomsColored extends StatelessWidget {
  const CustomButtomsColored(
      {super.key,
      required this.title,
      this.isSelected = false,
      required this.onTap});

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 81,
        height: 25,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: CustomColors.primarywhite,
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected
                  ? CustomColors.primarywhite
                  : CustomColors.primaryBlack),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
