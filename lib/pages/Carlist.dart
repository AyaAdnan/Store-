import 'package:flutter/material.dart';


class CarList extends StatelessWidget{

  final name ;
  final color ;
  final speed ;
  final motor ;

  CarList({this.name,this.speed,this.color,this.motor});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(child: Container(
      height: 100,
      width: 100,
      child: Card(child: Row(
        children: <Widget>[
          Expanded(flex: 1,child: Image.asset('image/Kia/K1.jpg')),
          Expanded(flex : 2 ,child: Container(
            alignment: Alignment.topRight,
            height: 100,

            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name,textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.w800)),
                Row(children: <Widget>[
                  Container(
                    // margin:EdgeInsets.only(top: 10,bottom: 10),
                    child: Expanded(child : Text(name,style:TextStyle(color: Colors.grey,fontSize: 10) ,),

                    ),
                  ),
                  Text(speed+'Speed',style:TextStyle(color: Colors.grey,fontSize: 10) ,)
                ],),
                Container(
                    margin: EdgeInsets.only(top: 7),
                    child :Text(motor+'Motor',style:TextStyle(color: Colors.red,fontSize: 18) ,)),


              ],),
          ),
          ),
        ],
      ),


      ),
    ),

      onTap: (){
      Navigator.of(context).pushNamed('details');
      },
    );
  }



}