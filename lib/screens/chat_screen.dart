import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title: Text('Ayo budal!'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title: Text('Ayo budal!'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title: Text('Ayo budal!'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
        ],
      ),
    );
  }
}
