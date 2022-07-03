import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'navigation.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildHomePage('Named Third Screen');
  }


  Widget buildHomePage(String title) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(child: Text('Named Third Screen')),
      drawer: NavDrawer(screen: '/contact'),
    );
  }
}