import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widget.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Order whatever, whenever from wherever!',
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(height: 8),
          if (kIsWeb)
            SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width * .2,
                child: MyImage()),
          if (!kIsWeb)
            Image.network(
              'https://engineering.purdue.edu/coursemirror/wp-content/uploads/2020/08/appstore.png',
              height: 30,
            ) //Image Network
        ],
      ),
    );
  }
}
