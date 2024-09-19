import 'package:flutter/material.dart';
import 'package:piano/widgets/tone.dart';
import 'package:piano/models/toneModel.dart';
import 'package:piano/views/tune_view.dart';

void main() {
  runApp(Piano());
}

class Piano extends StatelessWidget {
  const Piano({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneView(),
    );
  }
}
