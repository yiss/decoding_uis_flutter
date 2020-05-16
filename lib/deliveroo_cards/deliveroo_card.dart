import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DeliverooApp());
}

class DeliverooApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(textTheme: GoogleFonts.barlowTextTheme()),
        home: Scaffold(
          body: Center(
            child: DeliverooCard(
                imgUrl:
                    'https://cdn.pixabay.com/photo/2017/08/06/05/42/people-2589176_1280.jpg',
                title: 'Jogging',
                subtitle: 'Lorem ipsum dolor sit amet.',
                estimatedTime: '20 min'),
          ),
        ));
  }
}

class DeliverooCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final String estimatedTime;

  const DeliverooCard(
      {Key key,
      @required this.imgUrl,
      @required this.title,
      @required this.subtitle,
      @required this.estimatedTime})
      : assert(imgUrl != null),
        assert(title != null),
        assert(subtitle != null),
        assert(estimatedTime != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      top: 0.5, left: 0.5, right: 0.5, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 0,
                  child: Material(
                    borderRadius: BorderRadius.circular(60.0),
                    elevation: 2,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60.0)),
                      child: Text(
                        estimatedTime,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(2.5),
              child: Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.all(2.5), child: Text(subtitle))
          ],
        ));
  }
}
