import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title:
                  Text('Joko menambahkan anda di grup Trip to Pantai Nglambor'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title:
                  Text('Joko menambahkan anda di grup Trip to Pantai Nglambor'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title:
                  Text('Joko menambahkan anda di grup Trip to Pantai Nglambor'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title:
                  Text('Joko menambahkan anda di grup Trip to Pantai Nglambor'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title:
                  Text('Joko menambahkan anda di grup Trip to Pantai Nglambor'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
          Card(
            color: Color(0xFFe1f5fe),
            child: ListTile(
              leading: Image(
                image: AssetImage('lib/images/person.jpg'),
              ),
              title:
                  Text('Joko menambahkan anda di grup Trip to Pantai Nglambor'),
              subtitle: Text('15.50 WIB'),
            ),
          ),
        ],
      ),
    );
  }
}
