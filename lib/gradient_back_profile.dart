import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_icons.dart';
import 'profile_card.dart';

class GradientBackProfile extends StatelessWidget {
  String title = "Popular";

  GradientBackProfile(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Container(
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20
                        ),
                        child: Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.settings,
                          color: Colors.white30,
                          size: 20,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ProfileCard("assets/images/beach.jpeg",'Pathum Tzoo','pathumtzoo1@gmail.com'),
                ),
              ProfileIcons(),
              ],
            )));
  }
}
