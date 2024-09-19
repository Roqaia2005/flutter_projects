import 'package:chat_app/screens/register_screen.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
             const SizedBox(
              height: 75,
            ),
            Image.asset('assets/images/scholar.png',height: 100,),
            const Center(
              child: Text(
                "Scholar Chat",
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: 'Pacifico'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              hintText: "Email",
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hintText: "Password",
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomButton(
              text: "LOGIN",
            ),
            const SizedBox(
              height: 15,
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text(
                  "Don't have an account ?",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    child: const Text(" REGISTER",
                        style: TextStyle(color: Color(0xffC7EDE6))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
