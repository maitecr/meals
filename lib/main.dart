// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        )
      ),
      home: CategorisScreen(),
    );
  }
}
 