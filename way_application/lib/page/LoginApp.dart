import 'package:flutter/material.dart';
import 'package:way_application/page/LosePass.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Reg_Page.dart';
import 'LosePass.dart';
import 'MainPage.dart';

class LoginApp extends StatefulWidget {
  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {

  

  @override
  void initState() {
    super.initState();
    
  }

  Color  BLUE = Color(0xFF4C44CF);

  Color  GRAY = Color(0xFF333333);

  Color  RED = Color(0xFFE953DA);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 27)),
            Center(
              child: Image(
                image: AssetImage('assets/images/Log_item.png'),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 12)),
            Title(
              color: Colors.black,
               child: Text("Добро пожаловать!",style: TextStyle(
                fontSize: 30 
               ))
              ),
            Padding(padding: EdgeInsets.only(top: 18)),
            Text("Войдите, чтобы продолжить",style: TextStyle(fontSize: 14),),
            Padding(padding: EdgeInsets.only(top: 36)),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 8.5),
              child: Center(
                child: TextField(
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
              padding: const EdgeInsets.fromLTRB(30, 8.5, 30, 8.5),
              child: Center(
                child: TextField(
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
            RaisedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
                  borderRadius: BorderRadius.all(Radius.circular(14.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0,maxWidth:295,maxHeight: 56), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Войти',
                    style: TextStyle(color: Colors.white,fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 26)),
            Center(
              child: TextButton(
                child: Text("Забыли пароль?",style: TextStyle(color: Colors.blueAccent,fontSize: 14),),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LosePass()));},
              )
            ),
            Padding(padding: EdgeInsets.only(top: 28)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Нет аккаунта?",style: TextStyle(color: Color(0xFF333333),fontSize: 14),),
                Padding(padding: EdgeInsets.only(left: 10)),
                TextButton(
                  child: Text("Создать аккаунт",style: TextStyle(color: Colors.blueAccent,fontSize: 14),),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg_page()));},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
