import 'package:flutter/material.dart';
import 'package:language_learning/models/screen_model.dart';
import 'package:language_learning/components/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
      image: "assets/images/colors/color_black.png",
      en: "Black",
      jb: "黒 (Kuro)",
      sound: "sounds/colors/black.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_brown.png",
      en: "Brown",
      jb: "茶色 (Chairo)",
      sound: "sounds/colors/brown.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      en: "Dusty Yellow",
      jb: "くすんだ黄色 (Kusunda kiiro)",
      sound: "sounds/colors/dusty yellow.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_gray.png",
      en: "Gray",
      jb: "灰色 (Haiiro)",
      sound: "sounds/colors/gray.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_green.png",
      en: "Green",
      jb: "緑 (Midori)",
      sound: "sounds/colors/green.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_red.png",
      en: "Red",
      jb: "赤 (Aka)",
      sound: "sounds/colors/red.wav",
    ),
    ItemModel(
      image: "assets/images/colors/color_white.png",
      en: "White",
      jb: "白 (Shiro)",
      sound: "sounds/colors/white.wav",
    ),
    ItemModel(
      image: "assets/images/colors/yellow.png",
      en: "Yellow",
      jb: "黄色 (Kiiro)",
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            item: colors[index],
            color: const Color.fromARGB(255, 108, 39, 176),
          );
        },
      ),
    );
  }
}
