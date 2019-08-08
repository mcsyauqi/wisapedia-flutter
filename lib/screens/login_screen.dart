import 'package:flutter/material.dart';
import 'package:wisapedia/utilities/reusable_input_field.dart';
import 'sign_up_screen.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('lib/images/logo.png'),
                width: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: ReusableInputField(
                  hint: 'Email address',
                  icon: Icons.mail,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                child: ReusableInputField(
                  hint: 'Password',
                  icon: Icons.vpn_key,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        }),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }),
                      );
                    },
                    child: Text(
                      'SIGN UP',
                    ),
                  ),
                ],
              ),
              Text('Forget Password?'),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Belum bergabung dengan Wisapedia? \nDapatkan Wisapedia ID',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
