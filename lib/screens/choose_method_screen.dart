import 'package:flutter/material.dart';
import 'sign_up_screen.dart';
import 'login_screen.dart';

class ChooseMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Image(
                  image: AssetImage('lib/images/choose.jpg'),
                ),
              ),
              Expanded(
                child: Text(
                  'Find a travel partner with Wisapedia.\n Travel together and share the adventure',
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
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
                          'SIGN UP FOR FREE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return LoginScreen();
                            }),
                          );
                        },
                        child: Text(
                          'SIGN IN',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
