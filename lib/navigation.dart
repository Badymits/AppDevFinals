
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
              'KAE\nBetter nutrition for a better life',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('HOME'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/'){
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits_rounded),
            title: const Text('PRODUCTS'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/second') {
                Navigator.pushNamed(context, '/second');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('CONTACT US'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/third') {
                Navigator.pushNamed(context, '/third');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title:  const Text('LOGOUT'),
            onTap: () {
              Navigator.pop(context);
              if(screen != '/fourth') {
                Navigator.pushNamed(context, '/fourth');
              }
            },
          ),
        ],
      ),
    );
  }
}