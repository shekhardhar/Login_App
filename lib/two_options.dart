import 'package:flutter/material.dart';
import 'customer_screen.dart';
import 'seller_screen.dart';
import 'style.dart';

class TwoOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CustomerButton(
            loginAs: 'CUSTOMER',
            user: 'CUSTOMER',
          ),
          SizedBox(
            height: 30.0,
          ),
          SellerButton(
            loginAs: 'SELLER',
            user: 'SELLER',
          ),
        ],
      );
  }
}

class CustomerButton extends StatelessWidget {
  CustomerButton({@required this.loginAs, @required this.user});

  final String loginAs;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: RaisedButton(
        textColor: Color(0xFFFDFDFD),
        color: Color(0XFFEB1555),
        splashColor: Colors.orange,
        child: Text(
          loginAs,
          style: kButtonStyle,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CustomerPage(),
            ),
          );
        },
      ),
    );
  }
}

class SellerButton extends StatelessWidget {
  SellerButton({@required this.loginAs, @required this.user});

  final String loginAs;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: RaisedButton(
        textColor: Color(0xFFFDFDFD),
        color: Color(0XFFEB1555),
        splashColor: Colors.orange,
        child: Text(
          loginAs,
          style: kButtonStyle,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SellerPage(),
            ),
          );
        },
      ),
    );
  }
}
