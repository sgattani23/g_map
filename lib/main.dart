import 'package:flutter/material.dart';
import 'package:g_map/pages/HomePage.dart';
import 'package:g_map/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch:Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.homeRoute:(context)=>HomePage(),
        }
    );
  }
  
}
