import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../componet/MyDrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState(){
    return HomeState();

}
}


class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(title: Text("M&A Store"),backgroundColor: Colors.blue,
        //actions: <Widget>[IconButton(icon: Icon(Icons.dehaze),onPressed:null ,
        // )
        // ],
        centerTitle: true,
        elevation: 6,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite), onPressed: null),
        ],
        titleSpacing: 60, //distance between the left icon and the title
      ),
      drawer: MyDrawer(),
      body: ListView(children: <Widget>[
        Container(
          height: 300,
          width:double.infinity,
          child: Carousel(

            images: [
              AssetImage('image/slider/bb.jpg'),
              AssetImage('image/slider/cc.jpg'),
              AssetImage('image/slider/dd.jpg'),

            ],
            dotBgColor: Colors.black.withOpacity(0.5),
            boxFit: BoxFit.cover,
            dotIncreasedColor: Colors.blue,

          ),
        ),
        Container(padding: EdgeInsets.all(10),child: Text("الاقسام",style: TextStyle(fontSize: 30,color: Colors.blue),)),

        Container(height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[

              Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Image.asset('image/slider/reno.jpg',height: 80,width: 80,fit: BoxFit.fill,),
                  subtitle: Container(child: Text("Reno",textAlign: TextAlign.center,),),
                )
                ,),


              Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Image.asset('image/slider/bmw.jpg',height: 80,width: 80,fit: BoxFit.fill,),
                  subtitle: Container(child: Text("BMW",textAlign: TextAlign.center,),),
                )
                ,),

              Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Image.asset('image/slider/opel.jpg',height: 80,width: 80,fit: BoxFit.fill,),
                  subtitle: Container(child: Text("OPEL",textAlign: TextAlign.center,),),
                )
                ,),


              Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Image.asset('image/slider/kia.jpg',height: 80,width: 80,fit: BoxFit.fill,),
                  subtitle: Container(child: Text("kia",textAlign: TextAlign.center,),),
                )
                ,),


              Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Image.asset('image/slider/toyota.jpg',height: 80,width: 80,fit: BoxFit.fill,),
                  subtitle: Container(child: Text("toyota",textAlign: TextAlign.center,),),
                )
                ,),

              Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Image.asset('image/slider/ee.jpg',height: 80,width: 80,fit: BoxFit.fill,),
                  subtitle: Container(child: Text("toyota",textAlign: TextAlign.center,),),
                )
                ,),

            ],
          ),),
        //start latest product
        Container(padding: EdgeInsets.all(10),child: Text("احدث السيارات",style: TextStyle(fontSize: 30,color: Colors.blue),)),
        Container(
          height: 400,

          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              InkWell(
                child :GridTile(
                  child: Image.asset('image/slider/dd.jpg'),footer: Container(
                  height: 27,
                  color:Colors.black.withOpacity(0.5),
                  child: Text("BMW",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                ),
                ),
                onTap: (){},
              ),
              InkWell(
                child : GridTile(
                child: Image.asset('image/slider/bb.jpg',fit: BoxFit.fill,),footer: Container(
                height: 27,
                color:Colors.black.withOpacity(0.5),
                child: Text("Opel",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
              ),
              ),

      InkWell(
        child :GridTile(
                child: Image.asset('image/slider/cc.jpg',fit: BoxFit.fill,),footer: Container(
                height: 27,
                color:Colors.black.withOpacity(0.5),
                child: Text("Reno",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
              ),
                ),

              InkWell(
                 child: GridTile(
                child: Image.asset('image/product/11.jpg',fit: BoxFit.fill,),footer: Container(
                height: 27,
                color:Colors.black.withOpacity(0.5),
                child: Text("BMW",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
              ),
              ),

              InkWell(
               child:GridTile(
                child: Image.asset('image/slider/dd.jpg',fit: BoxFit.fill,),footer: Container(
                height: 27,
                color:Colors.black.withOpacity(0.5),
                child: Text("Toyota",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
              ),
             ),

      InkWell(
        child:GridTile(
                child: Image.asset('image/product/11.jpg',fit: BoxFit.fill,),footer: Container(
                height: 27,
                color:Colors.black.withOpacity(0.5),
                child: Text("BMW",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
              ),
              ),
            ],
          ),



        ),
      ],),


    )
      ,
    );



    //end;
  }

}


