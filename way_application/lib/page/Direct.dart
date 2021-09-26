import 'package:flutter/material.dart';
import 'RedInit.dart';

class Rait extends StatefulWidget {
  const Rait({Key? key}) : super(key: key);

  @override
  _RaitState createState() => _RaitState();
}

class _RaitState extends State<Rait> {
  var data = [
    'Красноперекопский 17/34/6',
    'Фрунзенский 32/8/11',
    'Кировский 16/2/9',
    'Держинский 8/10/30',
    'Заволжский 20/11/17',
    'Ленинский 8/5/11',
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
                width: width,
                height: 60,
                color: Color(0xFFEEEEEE),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: (){Navigator.pop(context);},
                      icon: Icon(Icons.arrow_back_rounded),
                      color: Color(0xFF8042D1),
                    ),
                    Text(
                      'Рейтинг Районов',
                      style: TextStyle(fontSize: 36, color: Color(0xFF7E32BD)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                )),
            Container(
              width: width,
              height: height - 60,
              color: Color(0xFFF2F2F2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < data.length; i++)
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 90,
                      width: width * 0.91,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.purple),
                            BoxShadow(color: Colors.purple)
                          ],
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              flex: 5,
                              child: TextButton(
                                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RedInit()));},
                                child: Text(
                                data[i] != '' ? data[i] : 'Пусто',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}