
import 'package:flutter/material.dart';
import 'home.dart';
import 'product.dart';
import 'contact.dart';

const primaryColor = Color(0xFFC0CAED);

class NavDrawer extends StatelessWidget {

  String screen;

  NavDrawer({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('First Screen'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/'){
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Second Screen'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/second') {
                Navigator.pushNamed(context, '/second');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Third Screen'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/third') {
                Navigator.pushNamed(context, '/third');
              }
            },
          ),
        ],
      ),
    );
  }
}