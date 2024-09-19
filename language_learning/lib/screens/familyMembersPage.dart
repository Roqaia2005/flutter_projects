import 'package:flutter/material.dart';
import 'package:language_learning/models/screen_model.dart';
import 'package:language_learning/components/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItemModel> members = const [
    ItemModel(
      image: "assets/images/family_members/family_grandfather.png",
      en: "Grandfather",
      jb: "祖父 (Sofu)",
      sound: "sounds/family_members/grand father.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_grandmother.png",
      en: "Grandmother",
      jb: "祖母 (Sobo)",
      sound: "sounds/family_members/grand mother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_father.png",
      en: "Father",
      jb: "父 (Chichi)",
      sound: "sounds/family_members/father.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_mother.png",
      en: "Mother",
      jb: "母 (Haha)",
      sound: "sounds/family_members/mother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_older_brother.png",
      en: "Older Brother",
      jb: "兄 (Ani)",
      sound: "sounds/family_members/older bother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_older_sister.png",
      en: "Older Sister",
      jb: "姉 (Ane)",
      sound: "sounds/family_members/older sister.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_son.png",
      en: "Son",
      jb: "息子 (Musuko)",
      sound: "sounds/family_members/son.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_daughter.png",
      en: "Daughter",
      jb: "娘 (Musume)",
      sound: "sounds/family_members/daughter.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_younger_brother.png",
      en: "Younger Brother",
      jb: "弟 (Otōto)",
      sound: "sounds/family_members/younger brohter.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_younger_sister.png",
      en: "Younger Sister",
      jb: "妹 (Imōto)",
      sound: "sounds/family_members/younger sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Item(
            item: members[index],
            color: const Color.fromARGB(255, 2, 116, 2),
          );
        },
      ),
    );
  }
}
