import 'package:flutter/material.dart';
import 'database.dart';
import 'package:finals_dev/register.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth>{
  bool isLogin = true;

  @override
  Widget build(BuildContext buildContext) =>
      isLogin ? LogIn(onClickedSignup: toggle) : Register(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}

