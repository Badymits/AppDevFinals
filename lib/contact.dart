import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'navigation.dart';

const primaryColor = Color(0xFFC0CAED);

const textColor = Color(0xFF091747);

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "KAE",
              style: TextStyle(color: textColor, fontSize: 20.0),
            ),
            Text(
              "Better nutrition for a better life",
              style: TextStyle(color: textColor, fontSize: 13.0, fontStyle: FontStyle.italic),
            )
          ],
        ),
        backgroundColor: primaryColor,
      ),

      body: const Center(
          child: Text('Contact Us Page')
      ),
      drawer: NavDrawer(screen: '/'),
    );

  }
}