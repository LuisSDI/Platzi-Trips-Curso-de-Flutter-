import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  String pathImage = "assets/images/beach.jpeg";
  String name = "Varuna Yasas";
  String mail = "01";
  ProfileCard(this.pathImage, this.name, this.mail);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userInfo = Container(
        margin: EdgeInsets.only(left: 20, right: 3, top: 2),
        child: Text(
          mail,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
        ));

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20,
          top: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 18,
            fontFamily: "Lato",
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        userName,
        userInfo,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 20
      ),

      width: 80,
      height: 80,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2
          ),
          image:DecorationImage(
              image: AssetImage(pathImage),
              fit: BoxFit.cover
          )
      ),
    );

    return Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Container(
              child: photo,
            ),
            Container(
              child: userDetails,
              alignment: Alignment.center,
            )
            ,
          ],
        ));
  }
}
