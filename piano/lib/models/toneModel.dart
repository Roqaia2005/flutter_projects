import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class ToneModel {
  const ToneModel(this.color,this.sound);
  final Color color;
  final String sound;
  
  void playSound(){
  final player = AudioPlayer();
  player.play(AssetSource(sound));
}
}
