import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Register extends StatefulWidget {
  final Function() onClickedSignIn;

  const Register({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>{
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
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
                      icon: Icon(Icons.account_box, size: 32),
                      label: Text(
                        'Register',
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: signIn,
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              text: 'Already have an account?',
                              children: [
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = widget.onClickedSignIn,
                                    text: ' Log In!',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      decoration: TextDecoration.underline,
                                    )
                                ),
                              ]
                          ),
                        )
                    ),
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
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),

    );
    Navigator.pushNamed(context, '/');
  }
}

