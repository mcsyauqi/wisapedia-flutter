import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:wisapedia/utilities/reusable_input_field.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('lib/images/logo.png'),
            width: 200.0,
          ),
          Text(
            'Create an account',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          Text(
            'Sign up with',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: SignInButton(
                    Buttons.Google,
                    text: "Google",
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: SignInButton(
                  Buttons.Facebook,
                  text: "Facebook",
                  onPressed: () {},
                ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: Row(children: <Widget>[
              Expanded(child: Divider()),
              Text("OR"),
              Expanded(child: Divider()),
            ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: ReusableInputField(
              hint: 'Name',
              icon: Icons.person,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: ReusableInputField(
              hint: 'Email',
              icon: Icons.mail,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: ReusableInputField(
              hint: 'Password',
              icon: Icons.vpn_key,
            ),
          ),
//          Padding(
//            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
//            child: ReusableInputField(
//              hint: 'Phone Number',
//              icon: Icons.phone_android,
//            ),
//          ),
          Text('Date of Birth:'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: DateTimeField(
              format: format,
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.date_range,
                  color: Colors.blue,
                ),
                hintText: 'Enter date',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'By clicking sign up, you agree to the Wisapedia Terms, Conditions, and Privacy Policy',
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Alert(
                context: context,
                type: AlertType.success,
                title: "Terimakasih",
                desc:
                    "Permintaan Anda akan\nsegera kami proses.\nSilahkan cek email anda\nuntuk verifikasi akun anda.",
                buttons: [
                  DialogButton(
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    width: 120,
                  )
                ],
              ).show();
            },
            child: Text(
              'SIGN UP',
            ),
          ),
        ],
      ),
    );
  }
}
