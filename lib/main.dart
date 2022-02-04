import 'package:flutter/material.dart';
import 'package:piatto_landing_page/piatto_landing_page.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

// class Home_Screen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[100],
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('Piatto App Demo'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: <Widget>[
//           VideoItems(
//             videoPlayerController: VideoPlayerController.asset(
//               'assets/Piatto_ScreenGrab.MOV',
//             ),
//             looping: true,
//             autoplay: true,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDEnsity: VisualDensity.adaptivePlatformDensity,
//         ),
//         initialRoute: '/',
//         routes: {
//           '/': (context) => PiattoLandingPage(),
//           '/settings': (context) => SettingsPage(),
//           '/login': (context) => LoginPage(),
//         },
//         onUnknownRoute: (settings) {
//           return MaterialPageRoute(
//             builder: (context) {
//               return NotFoundPage();
//             },
//           );
//         },
//       ),
//       home: const PiattoLandingPage(title: 'Piatto - Order Whatever, Whenever from Wherever!'),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
