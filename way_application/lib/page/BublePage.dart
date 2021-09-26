import 'package:flutter/material.dart';
import 'LoginApp.dart';
import 'TopList.dart';
import 'BublePage.dart';

class BublePage extends StatefulWidget {
  const BublePage({Key? key}) : super(key: key);

  @override
  _BublePageState createState() => _BublePageState();
}

class _BublePageState extends State<BublePage> {
  int _count = 555;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Ink(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF4C44CF),
          Color(0xFFE953DA),
        ],
      ),
      ),
    child: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(     
              onPressed:(){Navigator.pop(context);} ,          
              backgroundColor: Colors.white,
              child: Container(
                child: Icon(Icons.arrow_back_outlined,size: 55,color: Colors.blueAccent,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),              
              )
            ),
            FloatingActionButton(     
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>TopList()));} ,          
              backgroundColor: Colors.white,
              child: Container(
                child: Icon(Icons.star,size: 55,color: Colors.blueAccent,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
            FloatingActionButton(     
              onPressed:(){} ,          
              backgroundColor: Colors.white,
              child: Container(
                child: Icon(Icons.people_outline ,size: 55,color: Colors.blueAccent,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
            FloatingActionButton(     
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>BublePage()));},          
              backgroundColor: Colors.white,
              child: Container(
                child: Icon(Icons.location_city_outlined,size: 55,color: Colors.blueAccent,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),
            FloatingActionButton(     
              onPressed:(){} ,          
              backgroundColor: Colors.white,
              child: Container(
                child: Icon(Icons.menu,size: 55,color: Colors.blueAccent),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),               
              )
            ),            
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 26)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star_outline),

            Icon(Icons.priority_high_outlined),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 38)),
        Container(
          width: 236,
          height: 236,
          color: Colors.blueAccent,
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Text("Count = $_count"),
        Padding(padding: EdgeInsets.only(top: 20)),
        RaisedButton(
              onPressed: () 
              {
                  setState() {
                    _count++;
                  };
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0,maxWidth:295,maxHeight: 56), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child:  Text(
                    'Голосовать',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
      ],
    ),
    )
    );
  }
}