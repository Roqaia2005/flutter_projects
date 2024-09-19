import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
          backgroundColor: Color.fromARGB(255, 221, 129, 210),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 118,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 116,
                    backgroundImage: AssetImage("images/Roqaia_Hassan.webp")),
              ),
              Text(
                'Roqaia Hassan',
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: "Pacifico"),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(255, 177, 45, 153),
                    fontFamily: "Pacifico"),
              ),
              Divider(
                color: Colors.blueGrey,
                indent: 50,
                endIndent: 50,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 32,
                    color: Color.fromARGB(255, 134, 184, 225),
                  ),
                  title:
                      Text("(+20) 1272038911", style: TextStyle(fontSize: 20)),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 32,
                    color: Color.fromARGB(255, 134, 184, 225),
                  ),
                  title: Text("roqaiahassanahmed@gmail.com",
                      style: TextStyle(fontSize: 20)),
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: Colors.white,
              //     ),
              //     height: 65,
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 16),
              //           child: Icon(
              //             Icons.phone,
              //             size: 32,
              //             color: Color(0xFF2B475E),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 22),
              //           child: Text("(+20) 1272038911",
              //               style: TextStyle(fontSize: 20)),
              //         ),
              //         Spacer(
              //           flex: 1,
              //         )
              //       ],
              //     ),
              //   ),
              // ),

              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: Colors.white,
              //     ),
              //     height: 65,
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 16),
              //           child: Icon(
              //             Icons.mail,
              //             size: 32,
              //             color: Color(0xFF2B475E),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 22),
              //           child: Text("roqaiahassanahmed@gmail.com",
              //               style: TextStyle(fontSize: 20)),
              //         ),
              //         Spacer(
              //           flex: 1,
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          )),
    );
  }
}
