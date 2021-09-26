import 'package:flutter/material.dart';

class RedInit extends StatefulWidget {
  const RedInit({Key? key}) : super(key: key);

  @override
  _RedInitState createState() => _RedInitState();
}

class _RedInitState extends State<RedInit> {
  var data = [
    'Озеленение детской площадки',
    'Уборка территории',
    'Установка ограждения',
    'Уборка территории',
    'Уборка территории',
    'Озеленение детской площадки',
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
                      'ТОП инициатив в Красноперекопском районе',
                      style: TextStyle(fontSize: 25, color: Color(0xFF7E32BD)),
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
                  for (int i = 1; i < data.length; i++)
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 70,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.purple),
                            BoxShadow(color: Colors.purple)
                          ],
                          borderRadius: BorderRadius.circular(80)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                i.toString(),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                              flex: 8,
                              child: Text(data[i] != '' ? data[i] : 'Пусто')),
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.help_outline_rounded))),
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.star_border)))
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
