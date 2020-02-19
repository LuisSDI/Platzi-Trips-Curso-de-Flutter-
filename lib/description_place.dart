import 'package:flutter/material.dart';
import 'button_purple.dart';
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;
  String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final description = Text(
      descriptionDummy,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)),
      textAlign: TextAlign.left,

    );

    final star_half = Container(
      margin: EdgeInsets.only(top: 323, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(top: 323, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    final title_stars = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 320, left: 20, right: 20),
              child: Text(
                namePlace,
                style: TextStyle(
                 fontFamily: "Lato",
                fontSize: 30.0, fontWeight: FontWeight.w900),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[star, star, star, star, star_border],
            )
          ],
        ),
        Container(
          child:description,
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20
          ),
          //alignment: Alignment.centerLeft,
        ),
        ButtonPurple('Navigate')
      ],
    );

    return title_stars;
  }
}
