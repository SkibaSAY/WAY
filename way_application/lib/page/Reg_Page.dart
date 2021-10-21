
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:way_application/main.dart';
import 'package:way_application/page/LosePass.dart';
import 'MainPage.dart';
import 'LoginApp.dart';

class Reg_page extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<Reg_page> createState() => _Reg_pageState();
}

class _Reg_pageState extends State<Reg_page> {
  String username = '';
  String phone = '';
  String password = '';  
  bool infofound = false;
  bool registered = false;

  

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Future<void> addUser() {      
      return users
          .doc('$phone')
          .set({            
            'username': username,
            'password': password,
            'sessionID': SessionID
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Row(
          children: [
            IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back,color: Colors.blueAccent,)
            ),
            Padding(padding: EdgeInsets.only(left: 100)),
            Text('Шаг 1/2',style: TextStyle(color: Color(0xFF333333)),)
          ],
        ),
        backgroundColor:Colors.white ,
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 63)),
            Center(
              child: Text('Регистрация',style: TextStyle(fontSize: 36,color: Color(0xFF333333)))
            ),
            Container(
              padding:EdgeInsets.fromLTRB(32, 5, 32, 29),             
              child: Text('Пожалуйста, укажите следующие данные',
              style: TextStyle(fontSize: 14,color: Color(0xFF333333)))
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
              child: Center(
                child: TextField(
                  onChanged: (String value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                      labelText: 'Имя и фамилия',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xFFE8E6EA),
                        ),
                        borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
              child: Center(
                child: TextField(
                  onChanged: (String value) {
                    phone = value;
                  },
                  decoration: InputDecoration(
                      labelText: 'Телефон',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xFFE8E6EA),
                        ),
                        borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
              child: Center(
                child: TextField(
                  onChanged: (String value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                      labelText: 'Пароль',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xFFE8E6EA),
                        ),
                        borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            RaisedButton(
              onPressed: () {
                SessionID = Random(password.length).nextInt(10000000);
                FirebaseFirestore.instance
                .collection('users')
                .get()
                .then((QuerySnapshot querySnapshot) {
                    querySnapshot.docs.forEach((doc) {
                    if(doc.id == phone) {  
                    registered = true;                  
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LosePass()));
                    }                   
                    });
                  });
                  if(registered) {
                    addUser();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage())); 
                  }                                 
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0,maxWidth:295,maxHeight: 56), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Продолжить',
                    style: TextStyle(color: Colors.white,fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}