import 'dart:convert';
import 'package:translator/translator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class SmallFunctions {
  static void openLink(String profileUrl) async {
    final Uri url = Uri.parse(profileUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $profileUrl';
    }
  }

  static void sendEmail(
    String email,
  ) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      print('Could not launch $emailUri');
    }
  }

//   static final formdata = GlobalKey<FormBuilderState>();
//   static Future<void> submitForm(Map<String, dynamic> formkey) async {
//     final response = await http.post(
//       Uri.parse("http://127.0.0.1:8000/api/submitMail"),
//       body: {
//         'name': formkey['name'],
//         'email': formkey['email'],
//         'message': formkey['message'],
//       },
//     );
//     if (response.statusCode == 200) {
//       print('Form submitted successfully');
//     } else {
//       print('Form submission failed');
//     }
//   }

  static Future<void> submitForm(Map<String, dynamic> formData) async {
    try {
      final response = await http.post(
        Uri.parse('https://arjunk.free.nf/submitMail'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(formData),
      );

      if (response.statusCode == 200) {
        print('Form submitted successfully');
      } else {
        print('Failed to submit form: ${response.body}');
      }
    } catch (e) {
      print('Error during form submission: $e');
    }
  }

  static void translateWordToMultipleLanguages(String text) async {
    final translator = GoogleTranslator();

    // List of target languages
    List<String> languages = [
      'es',
      'fr',
      'de',
      'it',
      'zh-cn',
      'ar',
      'hi',
      'ru'
    ];

    // Store translations
    Map<String, String> translations = {};

    // Loop through each language and get the translation
    for (String lang in languages) {
      var translation = await translator.translate(text, to: lang);
      translations[lang] = translation.text;
    }

    // Print the translations
    translations.forEach((lang, translatedText) {
      print('$lang: $translatedText');
    });
  }
}
