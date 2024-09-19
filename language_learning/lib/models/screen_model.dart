import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jb;
  final String en;
  final String sound;
  const ItemModel(
      {this.image, required this.jb, required this.en, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
