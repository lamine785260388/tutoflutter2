import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          //ligne
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //pour aligner a gauche
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8), //le padding
                  child: Text(
                    "pizza",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text("par lamine Traore",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ))
              ],
            )),
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Text("55"),
          ],
        ));
    Widget buttonSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.blue, Icons.comment, "Comment"),
            _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),
          ],
        ));
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Faire cuire de leau  une poele et les champignons poele Faire cuire de leau dans une poele et les champignons poele ",
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
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Mes recettes"),
          ),
          body: Column(
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'images/loader.png',
                image:
                    'https://img.cuisineaz.com/660x660/2013/12/20/i95731-pizza-royale.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              descriptionSection
            ],
          )),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)),
        Text(
          label,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color),
        )
      ],
    );
  }
}
