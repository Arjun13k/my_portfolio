// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:my_portfolio/controller/functions/functions.dart';
// import 'package:my_portfolio/view/main/main_screen.dart';
// import 'package:translator/translator.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   final translator = GoogleTranslator();
//   List<Map<String, String>> translations = [];
//   final List<Map<String, String>> languages = [
//     {'code': 'en', 'name': 'English'},
//     {'code': 'ml', 'name': 'Malayalam'},
//     {'code': 'hi', 'name': 'Hindi'},
//     {'code': 'kn', 'name': 'Kannada'},
//     {'code': 'ta', 'name': 'Tamil'},
//     {'code': 'ar', 'name': 'Arabic'},
//   ];
//   int currentIndex = 0;

//   @override
//   void initState() {
//     _translateWelcome();
//     super.initState();
//   }

//   Future<void> _translateWelcome() async {
//     for (var lang in languages) {
//       var translation =
//           await translator.translate('welcome', to: lang['code'] ?? "");
//       setState(() {
//         translations
//             .add({'name': lang['name'] ?? "", 'text': translation.text});
//       });
//       await Future.delayed(Duration(seconds: 2));
//       if (currentIndex < languages.length - 1) {
//         setState(() {
//           currentIndex++;
//         });
//       } else {
//         // Navigate to the next screen after all translations are shown
//         _navigateToNextScreen();
//       }
//     }
//   }

//   void _navigateToNextScreen() {
//     // Navigate to the main screen or next part of your app
//     Navigator.of(context)
//         .pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: translations.isEmpty
//             ? CircularProgressIndicator()
//             : Text(
//                 ' ${translations[currentIndex]['text']}',
//                 style: TextStyle(fontSize: 24),
//               ),
//       ),
//     );
//   }
// }
