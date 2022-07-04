import 'package:flutter/material.dart';
import 'contact.dart';
import 'product.dart';
import 'home.dart';

const primaryColor = Color(0xFF03B4C6);

void main(){
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',

      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const home(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const product(),
        '/third': (context) => const contact(),
      },
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
    ),

  );
}

class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}