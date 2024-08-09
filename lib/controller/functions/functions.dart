import 'package:url_launcher/url_launcher.dart';

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
}
