

// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController _emailController = TextEditingController();
//       TextEditingController _passwordController = TextEditingController();
//       final _formkey = GlobalKey<FormState>();
//     @override
//     Widget build(BuildContext context) {
      
//       return Scaffold (
//         backgroundColor: Colors.blueGrey.shade100,
//         body: Center(
//           child: SizedBox(
//             width: 400,
//             child: Material(
//               elevation: 2,
//               child: Padding(
//                 padding: const EdgeInsets.all(28.0)
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Welcome back',
//                         style: Theme.of(context).textTheme.headline4,
//                       ),
//                       SizedBox(height: 25),
//                       TextFormField(
//                         validator: (value) {
//                           if (value.isEmpty) {
//                             return 'Please enter the email connected with your account';
//                           } else if (!isValidEmail(value)) {
//                             return 'Please check the email address connected with your Piatto account';
//                           } else {
//                             return null;
//                           }
//                         },
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                         ),
//                       ),
//                       SizedBox(height: 15),
//                       TextFormField(
//                         obscureText: true,
//                         validator: (value) {
//                           if (value.isEmpty) {
//                             return 'You forgot your password';
//                           } else if (value.length < 6) {
//                             return 'Password must be atleast six characters';
//                           } else {
//                             return null;
//                           }
//                         },
//                         controller: _passwordController,
//                         decoration: InputDecoration(
//                           labelText: 'Password'.
//                         ),
//                       ),
//                       SizedBox(height: 65),
//                       SizedBox(
//                         height: 40,
//                         width: double.infinity,
//                         child: FlatButton(
//                           onPressed: () {
//                             if (_formkey.currentState.validation()) {
//                               final _email = _emailController.text;
//                               final _password = _passwordController.text;
//                               FirebaseAuth.instance
//                                 .signInWithEmailAndPassword(
//                                   email: _email,
//                                   password: _password,
//                                 )
//                                 .then((_) => Navigator.of(context)
//                                   .pushNamed('/settings'))
//                                 .catchError((error) {
//                               showErrorDialog(context, error);
//                             });
//                           }
//                         },
//                         child: Text (
//                           'Login',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         color: Colors.blueAccent,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   ),
// }

// Future showErrorDialog(BuildContext context, error) {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: Text('Oh Snap!'),
//         content: Text(error.message),
//         actions: [
//           FlatButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text('Dismiss'),
//           )
//         ],
//         );
//       },
//     );
//   }
// }

// bool isValidEmail(String email) {
//   return RegExp(
//     --------------------------------------------------------
//     .hasMatch(email);
//   )
// }