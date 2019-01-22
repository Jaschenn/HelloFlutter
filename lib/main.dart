import 'package:flutter/material.dart';
import 'category_route.dart';

class HelloRectangleBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            '坚持就是胜利',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}

class HelloRectangleDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Header',
              style: TextStyle(fontSize: 40.0),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text('首页'),
            onTap: () {
              //update the app state
              
            },
          ),
          ListTile(
            title: Text('归档'),
            onTap: () {

              //update the app state
            },
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CategoryRoute(),
  ));
}
