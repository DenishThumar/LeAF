import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
        //  IconButton(icon:Icon(FontAwesomeIcons.signOutAlt,color: Colors.black,))
        ],
        backgroundColor: Color(0xFF39FF14),
        centerTitle: true,
        title: Text(
          "LeAF",
          style: TextStyle(
              color: Color(0xFF0A0E21), fontWeight: FontWeight.bold),
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This Facility Will Come Soon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Stay Tuned With Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      )
      
    );
  }
}
