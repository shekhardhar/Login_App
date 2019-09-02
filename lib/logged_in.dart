import 'package:flutter/material.dart';

class LoggedIn extends StatelessWidget {

  LoggedIn({@required this.emailID, @required this.password});
  final String emailID;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            emailID + ' you  have successfully logged in' + ' and your password is ' + password
        ),
      ),
    );
  }
}
