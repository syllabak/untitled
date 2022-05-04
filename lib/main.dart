//l'importation du packege
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget : widjet qui ont des propriete qui ne vont jamais changer
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titlesection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Column(
              //Pour aligner tout le texte
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: Text("Pizza facile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ),
                Text("Par Mamamya",
                    style: TextStyle(color: Colors.green[500], fontSize: 16))
              ],
            )),
            Icon(Icons.favorite, color: Colors.green),
            Text("55")
          ],
        ));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _builButtonColum(Colors.green, Icons.comment, "Comment"),
        _builButtonColum(Colors.green, Icons.share, "Share")
      ]),
    );
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Flutter est un kit de développement logiciel (SDK) d'interface utilisateur open-source créé par Google. Il est utilisé pour développer des applications pour Android, iOS, Linux, Mac, Windows, Google Fuchsia et le web à partir d'une seule base de code.",
        softWrap: true,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Mes recettes"),
          ),
          body: Column(children: [
            Image.asset(
              'images/pizza.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titlesection,
            buttonSection,
            descriptionSection
          ])), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Column _builButtonColum(Color color, IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color: color),
      ),
      Text(label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color,
          ))
    ],
  );
}
