import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'notification_screen.dart';
import 'chat_screen.dart';
import 'activity_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NotificationScreen(),
    ChatScreen(),
    ActivityScreen(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "lib/images/person.jpg",
                  ),
                ),
              ),
            ),
            accountName: Container(),
            accountEmail: new Container(),
            onDetailsPressed: () {},
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
              child: Image(
                image: AssetImage('lib/images/logo.png'),
              ),
            ),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Activity'),
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
