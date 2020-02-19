import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_profile_list.dart';
import 'gradient_back_profile.dart';


class HeaderAppBarProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: <Widget>[
          GradientBackProfile("Profile"),
          Container(
            child:CardImageProfileList(),
            alignment: Alignment.center,
          )
          ,
        ],
      ),
    );
  }
}
