import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sell extends StatefulWidget {
  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         // IconButton( icon:Icon(FontAwesomeIcons.signOutAlt,color: Colors.black,))
        ],
        backgroundColor: Color(0xFF39FF14),
        centerTitle: true,
        title: Text(
          'LeAF',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5,),
          Text('Name: Vinodbhai Thumar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text('State: Gujarat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text("Crop: Wheat",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text('Quantity: 30',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text('Sell Price: 1300',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                 padding: EdgeInsets.all(4.0),
                 margin: EdgeInsets.all(10.0),
                      child: Text('Add +',
                      style:TextStyle(
                          fontSize: 20,
                        color: Colors.white
                      )

                      ),
                // color: Colors.blue,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(9.0),
                   color: Colors.blue
                 ),
              )
            ],
          )
        ],
      ),
    );
  }
}
