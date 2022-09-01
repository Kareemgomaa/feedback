import 'package:feed_back1/components/components.dart';
import 'package:flutter/material.dart';

class backend extends StatelessWidget {
  const backend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return feedBackScreen(date: 'Sun 31/7/2021',instractorName: 'Dana',sessionName: 'Backend',);
  }
}
