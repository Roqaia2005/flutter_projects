import 'package:flutter/material.dart';
import 'package:language_learning/models/screen_model.dart';
import 'package:language_learning/components/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
      en: "Are you coming",
      jb: "来ますか (Kimasu ka)",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    ItemModel(
      en: "Don’t forget to subscribe",
      jb: "購読を忘れないでください (Kōdoku o wasurenaide kudasai)",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    ItemModel(
      en: "How are you feeling",
      jb: "気分はどうですか (Kibun wa dōdesu ka)",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    ItemModel(
      en: "I love anime",
      jb: "アニメが大好きです (Anime ga daisuki desu)",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    ItemModel(
      en: "I love programming",
      jb: "プログラミングが大好きです (Puroguramingu ga daisuki desu)",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    ItemModel(
      en: "Programming is easy",
      jb: "プログラミングは簡単です (Puroguramingu wa kantan desu)",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    ItemModel(
      en: "What is your name",
      jb: "お名前は何ですか (Onamae wa nandesu ka)",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    ItemModel(
      en: "Yes, I'm coming",
      jb: "はい、行きます (Hai, ikimasu)",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: phrases[index],
            color: const Color.fromARGB(255, 43, 164, 166),
          );
        },
      ),
    );
  }
}
