import 'package:flutter/material.dart';
import 'package:language_learning/models/screen_model.dart';
import 'package:language_learning/components/item.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      image: "assets/images/numbers/number_one.png",
      en: "One",
      jb: "いち (Ichi)",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_two.png",
      en: "Two",
      jb: "に (Ni)",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_three.png",
      en: "Three",
      jb: "さん (San)",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_four.png",
      en: "Four",
      jb: "し/よん (Shi/Yon)",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_five.png",
      en: "Five",
      jb: "ご (Go)",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_six.png",
      en: "Six",
      jb: "ろく (Roku)",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_seven.png",
      en: "Seven",
      jb: "しち/なな (Shichi/Nana)",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_eight.png",
      en: "Eight",
      jb: "はち (Hachi)",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_nine.png",
      en: "Nine",
      jb: "きゅう/く (Kyu/Ku)",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_ten.png",
      en: "Ten",
      jb: "じゅう (Juu)",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(item: numbers[index], color: Color(0xffEF9235));
        },
      ),
    );
  }
}
  // List<NumberItem> getList(List<Number> numbers) {
  //   List<NumberItem> listItem = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     listItem.add(NumberItem(number: numbers[i]));
  //   }
  //   return listItem;
  // }

