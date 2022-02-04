import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLink extends StatelessWidget {
  final String url;
  final Widget childIcon;
  const SocialLink({required this.url, Key? key, required this.childIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.tealAccent, width: 2),
          borderRadius: BorderRadius.circular(100)),
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: childIcon,
        onPressed: () => launch(url),
      ),
    );
  }
}
