import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import 'widgets/widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageUrl,
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  const SizedBox(width: 10),
                  const SocialLink(
                    childIcon: Text('@piatto'),
                    url: 'https://twitter.com/Piatto71768262',
                  ),
                ],
              ),

              const SizedBox(height: 10),
              const Expanded(child: VideoWidget()),
              const SizedBox(height: 20),
              for (var document in documents)
                ButtonLink(
                  title: document.title,
                  url: document.url,
                ),
              // const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SocialLink(
                    childIcon: FaIcon(FontAwesomeIcons.instagram),
                    url: 'https://www.instagram.com/piattoit/',
                  ),
                  SizedBox(width: 50),
                  SocialLink(
                    childIcon: Icon(Icons.facebook),
                    url: 'https://www.facebook.com/PiattoNow',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Footer(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
