import 'package:flutter/material.dart';
import 'package:fluttersiswalaravel/src/api/api_service.dart';
import 'package:fluttersiswalaravel/src/ui/home/home_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    ApiService() . getSiswa().then((value) =>print("value : $value"));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent,
      ),
    home: Scaffold(
      key: _scaffoldState,
        appBar: new AppBar(
          title: new Text(
            "Flutter CRUD API", style: TextStyle(color: Colors.white),
          ),
        ),
//        actions:<Widget>[
//        GestureDetector(
//          onTap: (){
//            Todo Implementation
//          },
//        )
//      ]
body: HomeScreen(),

    ),

    );

  }
}
