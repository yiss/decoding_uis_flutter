import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'spotify_card.dart';

void main() => runApp(SpotifyCardsApp());

class SpotifyCardsApp extends StatelessWidget {
  SpotifyCardsApp({Key key}) : super(key: key);
  final titles = ['Electronic/Dance', 'Pop', 'HiHop', 'Podcasts'];
  final images = [
    'https://images.unsplash.com/photo-1563200049-063524a8ee59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80',
    'https://images.unsplash.com/photo-1520220397001-584a8f4989a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    'https://images.unsplash.com/photo-1577400894067-517b3545c7df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    'https://images.unsplash.com/photo-1571457403686-45e398766082?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  'Search',
                  style: GoogleFonts.rubik(
                      fontSize: 40, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Center(
              child: GridView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: titles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 16 / 9,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (context, index) {
                  return SpotifyCard(
                    title: titles[index],
                    imgUrl: images[index],
                  );
                },
                shrinkWrap: true,
              ),
            )
          ],
        ),
      )),
    );
  }
}
