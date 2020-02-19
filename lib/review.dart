import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'description_place.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/images/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  Review(this.pathImage,this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 20,
      ),
    );

    final userComment = Container(
        margin: EdgeInsets.only(
            left: 20
        ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13,
              fontFamily: "Lato",
              fontWeight: FontWeight.w900
          ),
        )
    );
    final userInfo = Container(
        margin: EdgeInsets.only(
            left: 20,
            right: 3
        ),
        child: Text(
          details,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontFamily: "Lato",
            color: Color(0xFFa3a5a7)
          ),

        )

    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
          fontFamily: "Lato"
        ),

      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        Row(
          children: <Widget>[
            userInfo,
            star,
            star,
            star,
            star,
            star
          ],
        ),
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),

      width: 60,
      height: 60,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover
        )
      ),
    );

    return
      Container(
        margin: EdgeInsets.only(top: 20),
        child:Row(
          children: <Widget>[
            photo,
            userDetails
          ],
      ));
  }

}