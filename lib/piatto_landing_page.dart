import 'package:flutter/material.dart';
import 'package:piatto_landing_page/screens/splash_screen/widgets/button_link.dart';
import 'package:piatto_landing_page/constants.dart';
import 'package:piatto_landing_page/screens/splash_screen/widgets/footer.dart';

class PiattoLandingPage extends StatelessWidget {
  // const PiattoLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 35),
          // Padding(
          //   padding: EdgeInsets.only(top: 8), child: Widget()
          //   ),
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.white,
            radius: 48,
          ),
          SizedBox(height: 12),

          Text(
            '@piatto',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          for (var document in documents)
            ButtonLink(
              title: document.title,
              url: document.url,
            ),
          Spacer(),
          Footer(),
          SizedBox(height: 23),
        ],
      ),
    );
  }
}
