import 'package:flutter/material.dart';
import 'package:login_app/login_check_customer.dart';
import 'style.dart';


class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextStyle buttonStyle = TextStyle(fontFamily: 'NotoSans', fontSize: 30.0);

  final myControllerEmail = TextEditingController();
  final myControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              const IconData(59475, fontFamily: 'MaterialIcons'),
              size: 150.0,
            ),
            Text(
              'CUSTOMER LOGIN',
              style: kTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: myControllerEmail,
              obscureText: false,
              style: style,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: myControllerPassword,
              obscureText: true,
              style: kTextStyle,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              textColor: Color(0xFFFDFDFD),
              color: Color(0XFFEB1555),
              child: Text(
                'Login',
                style: kButtonStyle,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginCheck(
                      emailID: myControllerEmail.text,
                      password: myControllerPassword.text,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
