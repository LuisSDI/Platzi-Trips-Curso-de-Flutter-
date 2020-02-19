import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/images/people.jpg";
    String name = "Varuna Yasas";
    String details = "1 review 5 photos";
    String comment = "There is an amazing place in Sri Lanka";
    Review resena = new Review(pathImage, name, details, comment);

    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        resena,
        resena,
        resena
      ],
    );
  }


}