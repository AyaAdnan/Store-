import 'package:flutter/material.dart';
import '../componet/MyDrawer.dart';


      class Category extends StatefulWidget {
        @override
        _CategoryState createState() => _CategoryState();
      }

      class _CategoryState extends State<Category> with SingleTickerProviderStateMixin {
        AnimationController _controller;

        @override
        void initState() {
          _controller = AnimationController(vsync: this);
          super.initState();
        }

        @override
        void dispose() {
          _controller.dispose();
          super.dispose();
        }

        @override
        Widget build(BuildContext context) {
          return Directionality(textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Text("الاقسام"),
              centerTitle: true,
            ),
            drawer: MyDrawer(),
            body: GridView(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: <Widget>[
                    // 1- Kia
                    InkWell(
                      child: Card(
                        child: Column(children: <Widget>[
                        Expanded(child:   Image.asset('image/slider/kia.jpg',fit:BoxFit.cover,)),
                        Container(child : Text("Kia",style: TextStyle(fontSize: 21 ),),),

                        ],),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed('Kia Page');
                      },

                    ),


                    // 2- Opel
                    InkWell(
                      child: Card(
                        child: Column(children: <Widget>[
                          Expanded(child:   Image.asset('image/slider/opel.jpg',fit:BoxFit.cover,)),
                          Container(child : Text("Opel",style: TextStyle(fontSize: 21 ),),),

                        ],),
                      ),
                    ),


                    // 3- Reno
                    InkWell(
                      child: Card(
                        child: Column(children: <Widget>[
                          Expanded(child:   Image.asset('image/slider/reno.jpg',fit:BoxFit.cover,)),
                          Container(child : Text("Reno",style: TextStyle(fontSize: 21 ),),),

                        ],),
                      ),
                    ),


                    // 4- Toyta
                    InkWell(
                      child: Card(
                        child: Column(children: <Widget>[
                          Expanded(child:   Image.asset('image/slider/toyota.jpg',fit:BoxFit.cover,)),
                          Container(child : Text("Toyta",style: TextStyle(fontSize: 21 ),),),

                        ],),
                      ),
                    ),



                    // 5- Bmw
                    InkWell(
                      child: Card(
                        child: Column(children: <Widget>[
                          Expanded(child:   Image.asset('image/slider/bmw.jpg',fit:BoxFit.cover,)),
                          Container(child : Text("Bmw",style: TextStyle(fontSize: 21 ),),),

                        ],),
                      ),
                    ),

                    // 6- Cars
                    InkWell(
                      child: Card(
                        child: Column(children: <Widget>[
                          Expanded(child:   Image.asset('image/slider/ee.jpg',fit:BoxFit.cover,)),
                          Container(child : Text(" Cars",style: TextStyle(fontSize: 21 ),),),

                        ],),
                      ),
                    ),

                  ],



            ),
          ),
          );
        }
      }
