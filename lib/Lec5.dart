import 'package:flutter/material.dart';
class Lec5 extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "iman",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: 16,
          elevation: 10,
          //الظل
          shadowColor: Colors.cyan,
          // toolbarHeight: 50,//برتفع لفوق الاب بار
          //centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            // side: BorderSide(color: Colors.yellow)//لون الاطار الخارجي
          ),

          iconTheme: const IconThemeData(
            //كل  الايقونات بتحكم او حجم
            color: Colors.white,
          ),
          actionsIconTheme: const IconThemeData(
            // بتحكم بكل ايقونات الاكشن
            color: Colors.black,
          ),

          //Icon1*************
          // backgroundColor: Colors.black12,
          // leading: InkWell(
          //   onTap: (){
          //     print("menu item");
          //   },
          //     child: Icon(
          //       Icons.menu,
          //       color: Colors.black,
          //       size: 30,),
          // ),
          //Icon2*************
          leading: IconButton(
            onPressed: () {
              print("menu item");
            },
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),


            ),

            PopupMenuButton<String>(
              onSelected: (String item) {
                print("item:$item"); //علشان اعرف على مين ضغطت
              },
              //icon: Icon(Icons.more_horiz),
              offset: Offset(0, 40),
              //نزل المحنوى تحت
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              tooltip: 'menu',
              onCanceled: (){//
                print("Cancel");
              },
              //ضغطة طويلة
              itemBuilder:  (context) {
                return [const
                PopupMenuItem(
                  child: Text("profile"),
                  enabled: true,
                  height: 50,
                  textStyle: TextStyle(color: Colors.black),
                  value: "profile",
                  //padding:EdgeInsets.all(30),

                ),
                  const  PopupMenuItem(
                    child: Text("logout"),
                    value: "logout",
                    //  padding:EdgeInsets.all(30),


                  )
                ];
              },
            )
          ],
          //****************************
        ),
        body: const Center(
          child: Text(
            "Welcom IN Flutter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              wordSpacing: 10,
              // decoration: TextDecoration.underline,
              // decorationColor: Colors.red,
              //decorationStyle: TextDecorationStyle.dashed,
              // decorationThickness: 3,
            ),
          ),
        ),
      ),

    );

  }
}
