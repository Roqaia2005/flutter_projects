import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginScreen': (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
      },
      initialRoute: 'LoginScreen',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
