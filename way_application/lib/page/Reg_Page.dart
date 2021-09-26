
import 'package:flutter/material.dart';

class Reg_page extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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