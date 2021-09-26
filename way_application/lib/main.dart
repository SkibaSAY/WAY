import 'package:flutter/material.dart';

import 'page/LoginApp.dart';
import 'page/Reg_Page.dart';
void main() {
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