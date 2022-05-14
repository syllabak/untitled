import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'favoriteWidget.dart';

class RecipeScreen extends StatelessWidget {
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
                        style: TextStyle(color: Colors.black54, fontSize: 16))
                  ],
                )),
            FavoriteWidget(isFavorited: false, favoriteCount: 44)
          ],
        ));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            "Mes recettes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.green),
          ),
        ),
        body: ListView(children: [
          CachedNetworkImage(
            imageUrl:
            "https://alphamicropigmentation.com/wp-content/uploads/2017/05/pizza.jpg",
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          /**
           * FadeInImage.assetNetwork(
              placeholder: 'images/loading.gif',
              image:
              'https://alphamicropigmentation.com/wp-content/uploads/2017/05/pizza.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
              ),
           */
          titlesection,
          buttonSection,
          descriptionSection
        ]));
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
            )),
      ],
    );
  }
}