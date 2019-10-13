import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Flipper Animation'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/flipper');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Flare Loading'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/flare');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Sliver App Bar'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/sliver');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Close drawer'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
