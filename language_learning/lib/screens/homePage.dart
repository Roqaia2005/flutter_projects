import 'package:flutter/material.dart';
import 'package:language_learning/screens/colorsPage.dart';
import 'package:language_learning/screens/familyMembersPage.dart';
import 'package:language_learning/screens/numbersPage.dart';
import 'package:language_learning/screens/phrasesPage.dart';
import '../components/categoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor:const Color(0xff46322B),
          title: const Text(
            "Toku",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Category(
                text: "Numbers",
                color: const Color(0xffEF9235),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Numberspage();
                  }));
                }),
            Category(
                text: "Family Members",
                color:const Color.fromARGB(255, 2, 116, 2),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const FamilyMembersPage();
                  }));
                }),
            Category(
                text: "Colors",
                color: const Color.fromARGB(255, 108, 39, 176),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const ColorsPage();
                  }));
                }),
            Category(
                text: "Phrases",
                color: const Color.fromARGB(255, 43, 164, 166),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const PhrasesPage();
                  }));
                })
          ],
        ));
  }
}
