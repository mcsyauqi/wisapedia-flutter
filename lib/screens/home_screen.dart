import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
            margin: const EdgeInsets.only(),
            child: Material(
              borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
              elevation: 2.0,
              child: Container(
                height: 45.0,
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Theme.of(context).accentColor,
                          ),
                          hintText: "Search for trip",
                          border: InputBorder.none),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFFE1F5FE),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Image(image: AssetImage('lib/images/pantai.jpg')),
                  title: Text('Pantai Nglambor'),
                  subtitle: Text('by Ahmad Thariq Syauqi'),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('DETAILS'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      FlatButton(
                        child: const Text('JOIN'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Color(0xFFE1F5FE),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Image(image: AssetImage('lib/images/pantai.jpg')),
                  title: Text('Pantai Nglambor'),
                  subtitle: Text('by Ahmad Thariq Syauqi'),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('DETAILS'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      FlatButton(
                        child: const Text('JOIN'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Color(0xFFE1F5FE),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Image(image: AssetImage('lib/images/pantai.jpg')),
                  title: Text('Pantai Nglambor'),
                  subtitle: Text('by Ahmad Thariq Syauqi'),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('DETAILS'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      FlatButton(
                        child: const Text('JOIN'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
//          Expanded(
//            child: Container(
//              child: Text('Hai'),
//              margin: EdgeInsets.all(6.0),
//              decoration: BoxDecoration(
//                color: Colors.black,
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//            ),
//          ),
//          Expanded(
//            child: Container(
//              child: Text('Hai'),
//              margin: EdgeInsets.all(6.0),
//              decoration: BoxDecoration(
//                color: Colors.black,
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
