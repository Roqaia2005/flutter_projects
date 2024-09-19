import 'package:flutter/material.dart';

void main() => runApp(const BirthdayCardApp());

class BirthdayCardApp extends StatelessWidget {
  const BirthdayCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD2BCD5),
        body: Center(
          child: Image(
            image: AssetImage('images/image.png'),
          ),
        ),
      ),
    );
  }
}
