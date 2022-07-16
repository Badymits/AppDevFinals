import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';
import 'navigation.dart';

class LogIn extends StatefulWidget{
  @override
  _LogInState createState() => _LogInState();
}
class _LogInState extends State<LogIn> {
  final emailController  = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  Widget build(BuildContext buildContext){
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      TextField(
                        controller: emailController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      SizedBox(height: 4),
                      TextField(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50),
                        ),
                        icon: Icon(Icons.lock_open, size: 32),
                        label: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 24),
                        ),
                        onPressed: signIn,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 20),
                        child: Text(
                            "Don't have an account yet? Register now!",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
            )
          ],
        )
      ),
    );
  }
  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),

    );
    Navigator.pushNamed(context, '/');
  }
  }





