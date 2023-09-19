import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView();
  }
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("الرئيسية")),
        backgroundColor: Colors.black26,),
      body: Container(
        child: Column(
            children: <Widget>[
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Image.network(
                    'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a29zdGVubG9zZSUyMGJpbGRlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'
                ),
              ),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'الاضافات ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),

              ),

              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final imageUrl =
                        'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a29zdGVubG9zZSUyMGJpbGRlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80';

                    return Container(
                      width: 150,
                      height: 50,

                      margin: EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(imageUrl,)),
                    );
                  },
                ),
              ),
SizedBox(height: 10,),
              SizedBox(
                height: 600,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // عدد الأعمدة
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(

                      child: Column(
                        children: [
                          Image.network('https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a29zdGVubG9zZSUyMGJpbGRlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),

                          Icon(Icons.shopping_cart,size: 30,),

                          ElevatedButton(
                            onPressed: () {},
                            child: Text("إضافة إلى السلة"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

            ]
        ),
      ),
    );
  }
}
