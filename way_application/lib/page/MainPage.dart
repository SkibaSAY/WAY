import 'package:flutter/material.dart';
import 'LoginApp.dart';
import 'TopList.dart';
import 'BublePage.dart';
import 'Direct.dart';

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(     
              onPressed:(){} ,          
              backgroundColor: Colors.red,
              child: Container(
                child: Icon(Icons.search,size: 55,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),              
              )
            ),
            FloatingActionButton(     
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>TopList()));} ,          
              backgroundColor: Colors.red,
              child: Container(
                child: Icon(Icons.star,size: 55,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
            FloatingActionButton(     
              onPressed:(){} ,          
              backgroundColor: Colors.red,
              child: Container(
                child: Icon(Icons.add_circle_outline_outlined,size: 55,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
            FloatingActionButton(     
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Rait()));},          
              backgroundColor: Colors.red,
              child: Container(
                child: Icon(Icons.location_city_outlined,size: 55,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
            FloatingActionButton(     
              onPressed:(){} ,          
              backgroundColor: Colors.red,
              child: Container(
                child: Icon(Icons.menu,size: 55,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 40)),
        Title(color: Colors.blueAccent, child: Text("Последние инициативы",style: TextStyle(fontSize: 20,color: Colors.blueAccent))),
        Padding(padding: EdgeInsets.only(top: 10)),
        Center(
          child:Card( //класс, создающий элемент, похожий на карточку
              margin: EdgeInsets.all(10),
              elevation: 20,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blueAccent, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              shadowColor: Colors.blueAccent[60],
              child: ListTile(
                title: Text("Починить стену",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text("Район: Красноперекопский"),
                leading: Container(
                child: Icon(Icons.home,size: 55,color: Colors.white),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4C44CF),
                      Color(0xFFE953DA),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
              )
            ),           
          ),
          Center(
            child:Card( //класс, создающий элемент, похожий на карточку
                margin: EdgeInsets.all(10),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                shadowColor: Colors.blueAccent[60],
                child: ListTile(
                  title: TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BublePage()));},
                    child: Text("Ремонт дороги",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  ),
                  subtitle: Text("Район: Фрунзенский"),
                  leading: Container(
                  child: Icon(Icons.add_road,size: 55,color: Colors.white),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF4C44CF),
                        Color(0xFFE953DA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),               
                )
              )
            ),           
          ),
          Center(
            child:Card( //класс, создающий элемент, похожий на карточку
                margin: EdgeInsets.all(10),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                shadowColor: Colors.blueAccent[60],
                child: ListTile(
                  title: Text("Озеленение парка",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("Район: Ленинский"),
                  leading: Container(
                  child: Icon(Icons.nature_people,size: 55,color: Colors.white),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF4C44CF),
                        Color(0xFFE953DA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),               
                )
              )
            ),           
          ),
          Center(
            child:Card( //класс, создающий элемент, похожий на карточку
                margin: EdgeInsets.all(10),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                shadowColor: Colors.blueAccent[60],
                child: ListTile(
                  title: Text("Построили приют",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("Район: Дзержинский"),
                  leading: Container(
                  child: Icon(Icons.pets_outlined,size: 55,color: Colors.white),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF4C44CF),
                        Color(0xFFE953DA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),               
                )
              )
            ),           
          ),
          Center(
            child:Card( //класс, создающий элемент, похожий на карточку
                margin: EdgeInsets.all(10),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                shadowColor: Colors.blueAccent[60],
                child: ListTile(
                  title: Text("Провести акцию",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text("Район: Заволжский"),
                  leading: Container(
                  child: Icon(Icons.people_outline,size:55,color: Colors.white),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF4C44CF),
                        Color(0xFFE953DA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),               
                )
              )
            ),           
          ),
        ],
      ),    
    );
  }
}