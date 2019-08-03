import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'create_list.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CreateList(),
    PlaceholderWidget(Colors.deepPurple),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.redAccent)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Selfstudy'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_balance_wallet, color: Colors.white),
            ),
            IconButton(
              icon: Icon(Icons.folder_special, color: Colors.white,),
            ),
          ],
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              semanticLabel: 'menu',
            ),
            onPressed: () {
              print('Menu button');
            },
          ),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: _currentIndex, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: new Icon(Icons.note),
              title: new Text('Tests'),
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.multiline_chart),
                title: Text('Analysis')),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.chat),
                title: Text('Doubts')),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.person),
                title: Text('Profile'))
          ],
        ),
    );
  }



  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}