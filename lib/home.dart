import 'package:flutter/material.dart';
import 'navigation.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Named First Screen'),
      ),
      body: const Center(
          child: Text('First Screen')
      ),
      drawer: NavDrawer(screen: '/'),
    );
  }

}