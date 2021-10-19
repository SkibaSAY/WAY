import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'page/LoginApp.dart';
import 'page/Reg_Page.dart';

void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }


void main() {
  initFirebase();
  runApp(MaterialApp(  
  initialRoute: '/',//перевод: начальное положение
  routes:{//страницы, которые есть в приложении
    //'/': (context) => MainScreen(),//основная страница
    //'/todo': (context) => MainScreen(),
    //'/RegPage':(context) => Reg_page(),
    '/': (context) => LoginApp(),
  },
  
));
}
//LoginApp()