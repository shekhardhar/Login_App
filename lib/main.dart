import 'package:flutter/material.dart';
import 'two_options.dart';

void main() => runApp(LoginScreen());

class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),

        home: Scaffold(
          body: TwoOptions(),
        )

    );
  }
}

