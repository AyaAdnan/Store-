import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import './pages/home.dart';
import './pages/catogary.dart';
import './pages/Kia.dart';
import './pages/CarsList.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //start
      title: "M&A Store ",
      home: Home(),
      routes: {
          'catogary' : (context){
            return Category();
          } ,


        'homepage' : (context){
          return Home();
        } ,

        'Kia Page' : (context){
          return Kia();
        },
        'details' : (context){
          return CarsList ();
        }


      },
    );
  }

}