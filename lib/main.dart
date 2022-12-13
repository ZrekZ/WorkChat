import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Chat());

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Login', initialRoute: '/', routes: {
      '/': (BuildContext context) => LoginPage(
            title: "Login",
          ),
      '/second': (BuildContext context) => MainScreen()
    });
  }
}
