import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_profile.dart';

class CardImageProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 255
      ),
      height: double.infinity,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/images/beach.jpeg",'Playa del Carmen'),
          CardImageProfile("assets/images/beach_palm.jpeg",'Port Barton'),
          CardImageProfile("assets/images/mountain.jpeg",'Mt. Omoto'),
          CardImageProfile("assets/images/mountain_stars.jpeg",'Shenzhen Hill'),
          CardImageProfile("assets/images/sunset.jpeg",'Malapascua Sunset'),
          CardImageProfile("assets/images/river.jpeg",'Rio Bravo'),

        ],
      ),
    );
  }
}
