import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase4/first_screen.dart';
import 'package:flutter_firebase4/sign_in.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 120),
              SignInButton(Buttons.Google, onPressed: () {
                signInWithGoogle().then((result) {
                  if (result != null) {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) {
                              return FirstScreen();
                            }
                        )
                    );
                  }
                });
              }
              ),
              Padding(padding: EdgeInsets.all(3.0)),
              SignInButton(Buttons.Twitter, onPressed: (){}),
              Padding(padding: EdgeInsets.all(3.0)),
              SignInButton(Buttons.FacebookNew, onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}