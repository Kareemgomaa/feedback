import 'dart:ui';

import 'package:feed_back1/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class lifeAfterGraduation extends StatelessWidget {
  lifeAfterGraduation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return feedBackScreen(sessionName: 'Life after draduation', instractorName: 'Mohamed Eslam', date: 'Mon 1/8/2022');
  }
}
