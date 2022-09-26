import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {

  TextEditingController MoNumber = new TextEditingController();
  TextEditingController Name = new TextEditingController();
  TextEditingController Password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xFF39FF14),
        centerTitle: true,
        title: Text(
          'LeAF',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: Name,
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    hintText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              TextFormField(
                controller: MoNumber,
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    hintText: 'Mobile No.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                keyboardType: TextInputType.number,
                maxLength: 10,
              ),
              TextFormField(
                controller: Password,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                        onTap:(){
                        },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue.shade500,
                            ),
                            child: Center(
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue.shade500,
                            ),
                            child: Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
