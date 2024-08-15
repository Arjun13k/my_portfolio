// // import 'package:flutter/material.dart';
// // import 'package:my_portfolio/global/custom_Color/custom_color.dart';

// // class CustomButtomUncolored extends StatelessWidget {
// //   const CustomButtomUncolored(
// //       {super.key, required this.title, this.isUnselected, this.border});
// //   final String title;
// //   final bool? isUnselected;
// //   final Border? border;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 64,
// //       height: 25,
// //       child: Center(
// //         child: Text(
// //           title,
// //           style: TextStyle(color: CustomColors.primaryBlack),
// //         ),
// //       ),
// //       decoration:
// //           BoxDecoration(borderRadius: BorderRadius.circular(6), border: border),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:my_portfolio/global/custom_Color/custom_color.dart';

// class CustomButtomUncolored extends StatelessWidget {
//   const CustomButtomUncolored({
//     super.key,
//     required this.title,
//     this.isUnselected = false,
//     required this.onPressed,
//   });

//   final String title;
//   final bool isUnselected;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         width: 64,
//         height: 25,
//         child: Center(
//           child: Text(
//             title,
//             style: TextStyle(
//               color: isUnselected
//                   ? CustomColors.primaryBlack
//                   : CustomColors.primarywhite,
//             ),
//           ),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           border: Border.all(color: CustomColors.primaryBlack),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  final String text;
  final Duration duration;

  const TypingText({
    Key? key,
    required this.text,
    this.duration = const Duration(seconds: 2),
  }) : super(key: key);

  @override
  _TypingTextState createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int charCount = (_animation.value * widget.text.length).round();
    String displayText = widget.text.substring(0, charCount);

    return Text(
      displayText,
      style: TextStyle(fontSize: 24), // You can customize the style here
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: TypingText(
          text: "Hello, Flutter!",
          duration: Duration(seconds: 3),
        ),
      ),
    ),
  ));
}
