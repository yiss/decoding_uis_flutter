import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotifyCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  const SpotifyCard({Key key, this.title, this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.indigo,
        ),
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Positioned(
              top: 15,
              left: 5,
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Text(
                  title,
                  style: GoogleFonts.rubik(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Positioned(
              right: -15,
              top: 15,
              child: Transform.rotate(
                angle: pi / 10,
                child: Material(
                  elevation: 4,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
