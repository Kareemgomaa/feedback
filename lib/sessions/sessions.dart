import 'package:feed_back1/assets/flutter-icons-b4ae11ae/my_flutter_app_icons.dart';
import 'package:feed_back1/components/components.dart';
import 'package:feed_back1/feedback_page/session_page/backend.dart';
import 'package:feed_back1/feedback_page/session_page/business.dart';
import 'package:feed_back1/feedback_page/session_page/life_after_graduation.dart';
import 'package:feed_back1/feedback_page/session_page/life_roaa.dart';
import 'package:feed_back1/feedback_page/session_page/mobile.dart';
import 'package:feed_back1/feedback_page/session_page/problem_dana.dart';
import 'package:feed_back1/feedback_page/session_page/problem_roaa.dart';
import 'package:feed_back1/feedback_page/session_page/ui.dart';
import 'package:feed_back1/feedback_page/session_page/web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/widgets.dart';

class SessionScreen extends StatelessWidget {
  const SessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('4B72AD'),
        title: Text('Selcet session',style: TextStyle(
          fontSize: 30
        ),),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          sessionBottom(sessionName: 'Life after graduation', instractorName: 'Mohamed Eslam', myImage: Image.asset('lib/assets/icon/Icon awesome-user-graduate.png'), myPage: lifeAfterGraduation(),),
          myDivider(),
          sessionBottom(sessionName: 'Life after graduation', instractorName: 'Roaa Reda', myImage: Image.asset('lib/assets/icon/Icon awesome-user-graduate.png'), myPage: lifeRoaa(),),
          myDivider(),
          sessionBottom(sessionName: 'problem solving', instractorName: 'Dana', myImage:Image.asset('lib/assets/icon/problem-solving.png'), myPage: problemDana(), ),
          myDivider(),
          sessionBottom(sessionName: 'problem solving', instractorName: 'Roaa Koraim', myImage: Image.asset('lib/assets/icon/problem-solving.png'), myPage: problemRoaa(),),
          myDivider(),
          sessionBottom(sessionName: 'UX-UI design', instractorName: 'Asmaa', myImage:Image.asset('lib/assets/icon/ui.png'), myPage: ui(), ),
          myDivider(),
          sessionBottom(sessionName: 'Mobile front end', instractorName: 'Roaa Koraim', myImage: Image.asset('lib/assets/icon/android.png'), myPage: mobile(),),
          myDivider(),
          sessionBottom(sessionName: 'Web front end', instractorName: 'Mostafa', myImage: Image.asset('lib/assets/icon/web-programming.png'), myPage: web(),),
          myDivider(),
          sessionBottom(sessionName: 'Backend (python)', instractorName: 'Dana', myImage: Image.asset('lib/assets/icon/python.png'), myPage: backend(),),
          myDivider(),
          sessionBottom(sessionName: 'Bussines Analysist', instractorName: 'Roaa Reda', myImage: Image.asset('lib/assets/icon/analysis.png'), myPage: business(),),
          myDivider(),
        ],
      ),
    );

  }

}

