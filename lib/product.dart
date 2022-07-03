import 'package:flutter/material.dart';
import 'navigation.dart';

class product extends StatelessWidget {
  const product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Second Screen'),
      ),
      body: const Center(child: Text('Named Second Screen')),
      drawer: NavDrawer(screen: '/product'),
    );
  }

}