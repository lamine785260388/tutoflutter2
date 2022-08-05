import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoritWidget.dart';

class RecipScreen extends StatelessWidget {
  const RecipScreen({
    Key? key,
  }) : super(key: key);

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
            FavoriteWidget(
              isFavorited: true,
              favoriteCount: 55,
            ),
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
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Mes recettes"),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 600,
                  height: 240,
                  child: Center(child: CircularProgressIndicator()),
                ),
                Image.asset(
                  'images/pizza2.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ));
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
