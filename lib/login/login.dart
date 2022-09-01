
import 'package:feed_back1/components/components.dart';
import 'package:feed_back1/sessions/sessions.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('f7f7f7'),
      body: Center(
        child: ListView(
          padding:  const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('assets/splash.png',height: 150),
            ),
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: HexColor('4B72AD'),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: ('ROBOTO'),
                ),
              ),
            ),
            CustomFormTextField(
              hintText: '    Email',
              obscureText: false,
            ),
            SizedBox(height: 20,),
            CustomFormTextField(
              hintText: '    Password',
              obscureText: true,
            ),
            SizedBox(height: 20,),
            CustomButon(
              text: 'Login',
              onTap:  (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SessionScreen()),);
              },
            ),

          ],
        ),
      ),
    );

  }
}
