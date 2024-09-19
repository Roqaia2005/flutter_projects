import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:piano/models/toneModel.dart';

class Tone extends StatelessWidget {
  const Tone({super.key, required this.tone});
  final ToneModel tone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tone.playSound();
        },
        child: Container(color: tone.color),
      ),
    );
  }
}
