import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountEmail: Text("Aya@gmail.com"),
              accountName: Text("Aya Adnan Alawe"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person),),
              decoration: BoxDecoration(
                image: DecorationImage(image:
                AssetImage("image/aa.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text("الصفحة الرئيسية", style: TextStyle(
                color: Colors.black,
                fontSize: 19,

              ),),
              leading: Icon(Icons.home, color: Colors.blue, size: 25,),
              onTap: (){
                Navigator.of(context).pushNamed('homepage');
              },

            ),
            ListTile(
              title: Text("الاقسام", style: TextStyle(
                color: Colors.black,
                fontSize: 19,

              ),),
              leading: Icon(Icons.category, color: Colors.blue, size: 25,),
              onTap: (){
                Navigator.of(context).pushNamed('catogary');
              },
            ),
            Divider(color: Colors.blue,),
            ListTile(
              title: Text("حول التبيق", style: TextStyle(
                color: Colors.black,
                fontSize: 19,

              ),),
              leading: Icon(Icons.info_outline, color: Colors.blue, size: 25,),

            ),


            ListTile(
              title: Text("الاعدادات", style: TextStyle(
                color: Colors.black,
                fontSize: 19,

              ),),
              leading: Icon(Icons.settings, color: Colors.blue, size: 25,),
            ),


            ListTile(
              title: Text("تسجيل الخروج", style: TextStyle(
                color: Colors.black,
                fontSize: 19,

              ),),
              leading: Icon(Icons.exit_to_app, color: Colors.blue, size: 25,),
            ),


          ],
        )
    );
  }

}