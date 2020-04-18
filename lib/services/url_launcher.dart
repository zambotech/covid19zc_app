import 'package:url_launcher/url_launcher.dart';

Future<void> launchDialPad(String url) async {
  print(url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}