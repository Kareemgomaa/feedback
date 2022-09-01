import 'package:feed_back1/feedback_page/session_page/life_after_graduation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({this.hintText, this.onChanged , this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material (
        elevation: 6,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
              color: HexColor('fefffe'),
              borderRadius: BorderRadius.circular(12)
          ),

          child: TextFormField(
            obscureText:obscureText!,
            decoration: InputDecoration(
              labelText: hintText,
              hintStyle: TextStyle(
                color: HexColor('A4A1A1FF'),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder:  InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButon extends StatelessWidget {
  CustomButon({ this.onTap ,required this.text}) ;
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: HexColor('4a72ac'),
          ),

          height: 45,
          child: Center(
            child: Text(text,style: TextStyle(
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}

class sessionBottom extends StatelessWidget {
  sessionBottom({required this.sessionName, required this.instractorName, required this.myImage,required this.myPage});
  String sessionName;
  String instractorName;
  Image myImage;
  Widget myPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  myPage),);
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,),
          child: Row(
            children: [
            CircleAvatar(
              backgroundColor: HexColor('4B72AD'),
              child: myImage,
              radius: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sessionName,
                    style: TextStyle(
                      fontSize: 20,
                      color: HexColor('4B72AD'),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ROBOTO',
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    instractorName,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.arrow_forward_ios_rounded,color: HexColor('959594'),

              ),
            ),
          ],),
        ),
      ),
    );
  }
}


Widget myDivider() {
  return Padding(
    padding: EdgeInsets.only(left: 75,),
    child: Divider(
      color: HexColor('959594'),
      thickness: 1,
    ),
  );
}

class feedBackScreen extends StatelessWidget {
  feedBackScreen({required this.sessionName,required this.instractorName,required this.date});
  String sessionName;
  String instractorName;
  String date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading : IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_rounded,semanticLabel: 'Session',)
        ),
        title: Text('Session',style: TextStyle(
            fontSize: 10,
            fontFamily: ('ROBOTO')
        ),),
        backgroundColor: HexColor('4B72AD'),
        toolbarHeight: 40,
      ),
      body: ListView(

        children: [
          Container(
            height: 80,

            decoration: BoxDecoration(
                color: HexColor('4B72AD'),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(sessionName,style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: ('ROBOTO'),
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10,),
                      Text(instractorName,style: TextStyle(
                          color: Colors.white
                      ),)
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(date,style: TextStyle(
                      color: Colors.white
                  ),),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 12,bottom: 8),
                child: Text('Is this content simple ?',style: TextStyle(
                  color: HexColor('4B72AD'),
                  fontSize: 18,
                  fontFamily: ('ROBOTO'),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,color: HexColor('4B72AD'),),
                    SizedBox(width: 8,),
                    Text('Yes',style: TextStyle(color: HexColor('4B72AD')),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,color: HexColor('4B72AD'),),
                    SizedBox(width: 8,),
                    Text('No',style: TextStyle(color: HexColor('4B72AD')),)
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('If no,please say why?',style: TextStyle(
                  color: HexColor('4B72AD'),
                  fontSize: 18,
                  fontFamily: ('ROBOTO'),
                ),),
              ),
              Material(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12,top: 20,bottom: 8),
                child: Text('Is there a practical part during session ?',style: TextStyle(
                  color: HexColor('4B72AD'),
                  fontSize: 18,
                  fontFamily: ('ROBOTO'),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,color: HexColor('4B72AD'),),
                    SizedBox(width: 8,),
                    Text('Yes',style: TextStyle(color: HexColor('4B72AD')),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,color: HexColor('4B72AD'),),
                    SizedBox(width: 8,),
                    Text('No',style: TextStyle(color: HexColor('4B72AD')),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 20,bottom: 8),
                child: Text('Have all questions been answered ?',style: TextStyle(
                  color: HexColor('4B72AD'),
                  fontSize: 18,
                  fontFamily: ('ROBOTO'),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,color: HexColor('4B72AD'),),
                    SizedBox(width: 8,),
                    Text('Yes',style: TextStyle(color: HexColor('4B72AD')),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Icon(Icons.circle_outlined,color: HexColor('4B72AD'),),
                    SizedBox(width: 8,),
                    Text('No',style: TextStyle(color: HexColor('4B72AD')),)
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('How to improve our session',style: TextStyle(
                  color: HexColor('4B72AD'),
                  fontSize: 18,
                  fontFamily: ('ROBOTO'),
                ),),
              ),
              Material(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomButon(text: 'Submit')
        ],
      ),

    );
  }
}
