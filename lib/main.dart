import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'contact.dart';
import 'product.dart';
import 'home.dart';
import 'database.dart';

const primaryColor = Color(0xFF03B4C6);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "finals dev",
    options: FirebaseOptions(
      apiKey: "XXX", // Your apiKey
      appId: "XXX", // Your appId
      messagingSenderId: "XXX", // Your messagingSenderId
      projectId: "XXX", // Your projectId
    ),
  );
  runApp(
    MaterialApp(
      title: 'KAE Consumer App',

      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Home(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const product(),
        '/third': (context) => const contact(),
        // '/fourth': (context) => LogIn(),
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
class MainPage extends StatelessWidget{
    @override
  Widget build(BuildContext context) => Scaffold(
  body: StreamBuilder<User?>(
  stream: FirebaseAuth.instance.authStateChanges(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
  return Center(child:CircularProgressIndicator());
  }
    else if (snapshot.hasError){
  return Center(child: Text('Something went wrong!'));
  }
    else if (snapshot.hasData){
      return const Home();
    }
    else {
      return LogIn();
    }
  }
  )
  );
  }