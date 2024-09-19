import 'package:flutter/material.dart';
import 'package:piano/widgets/tone.dart';
import 'package:piano/models/toneModel.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<ToneModel> tones = const [
    ToneModel(Colors.red, "tunes/note1.wav"),
    ToneModel(Colors.orange, "tunes/note2.wav"),
    ToneModel(Colors.yellow, "tunes/note3.wav"),
    ToneModel(Colors.green, "tunes/note4.wav"),
    ToneModel(Color.fromARGB(255, 13, 74, 123), "tunes/note5.wav"),
    ToneModel(Color.fromARGB(255, 57, 170, 159), "tunes/note6.wav"),
    ToneModel(Color.fromARGB(255, 109, 36, 176), "tunes/note7.wav"),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff253238),
          title: Text(
            "Flutter Tune",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children:
              tones.map((e) => Tone(tone: e,)).toList(),

          // home: ListView.builder(
          //     itemCount: tones.length,
          //     itemBuilder: (context, index) {
          //       return Tone(color: tones[index].color, sound: tones[index].sound);
          //     })
        ));
  }
}

// List<Tone> getTone(List<ToneModel> tones) {
//   List<Tone> t = [];
//   for (int i = 0; i < tones.length; i++) {
//     t.add(Tone(
//       sound: tones[i].sound,
//       color: tones[i].color,
//     ));
//   }
//   return t;
// }
