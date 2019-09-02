import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginCheck extends StatelessWidget {
  String emailID;
  String password;
  var data;

  LoginCheck({@required this.emailID, @required this.password});

  Future<String> checkInDatabase({String emailID, String password}) async {
    var url = 'http://192.168.43.46/test_seller.php';
    final response = await http.post(url, body: {
      "email": emailID,
      "password": password,
    });

    Map<String, dynamic> map = json.decode(response.body);
    if (map.isNotEmpty) {
      return map['email'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: checkInDatabase(emailID: emailID, password: password),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                return Center(
                  child: Text("Welcome " +snapshot.data),
                );
              } else {
                return Center(
                  child: Text("Invalid Credtentials! Try Again "),
                );
              }
            }));
  }
}
