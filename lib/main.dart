//l'importation du packege
import 'package:flutter/material.dart';
import 'package:untitled/recipeSreen.dart';

void main() {
  runApp(MyApp());
}
// StatelessWidget : widjet qui ont des propriete qui ne vont jamais changer
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RecipeScreen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}