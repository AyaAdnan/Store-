import 'package:flutter/material.dart';
import './Carlist.dart';



class Kia extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return KiaState();
  }
  
}

class  KiaState extends State<Kia>{


  var Kia=[{
    'name': 'Kia 2019',
    'color': 'black',
    'speed':'300km/1h',
    'motor': '3 hourses'
  },
  {
    'name': 'Kia 2017',
    'color': 'black',
    'speed':'400km/1h',
    'motor': '5 hourses'
  },
  {
    'name': 'Kia 1999',
    'color': 'black',
    'speed':'400km/1h',
    'motor': '5 hourses'
  }
  ];




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kia"),
          centerTitle: true,
        ),




        body: ListView.builder(
          itemCount:Kia.length ,
          itemBuilder: (context,i){
            return CarList(name:Kia[i]['name'],speed:Kia[i]['speed'],color:Kia[i]['color'],motor: Kia[i]['motor']);
          },

        ),

      ),
      
    );
  }
  
}


