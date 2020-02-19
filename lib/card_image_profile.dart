import 'package:flutter/material.dart';
import 'floating_action_button_green_profile.dart';

class CardImageProfile extends StatelessWidget {

  String details = 'Hiking, Waterfall Hunting, Natural Bath, Scenary & Photography';
  String pathImage = "assets/images/beach.jpeg";
  String title = 'Playa';
  String steps ='123,123,123';
CardImageProfile(this.pathImage,this.title);
  @override
  Widget build(BuildContext context) {

  final card_details = Container(
    margin: EdgeInsets.only(
      top: 40
    ),
    child:  Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        Container(
          width: 200,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15,
                    offset: Offset(0.0,0.7)
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    bottom: 5
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: 5
                ),
                child: Text(
                  details,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  'Steps $steps',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 15,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold),

                ),
              )
            ],
          ),
        ),
        Container(
          child: FloatingActionButtonGreenProfile(),
          width: 30,
          height: 30,)
      ],
    ),

  );



  final card = Container(
      height: 200,
      width: 350,
      margin: EdgeInsets.only(

          left: 5,
          right: 5
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0.0,0.7)
            )
          ]
      ),
    );
    return Container(
      margin: EdgeInsets.only(
        bottom: 60
      ),
      child:Stack(
        alignment: Alignment(1,1.9),
        children: <Widget>[
          card,
          Container(
            child:card_details,
            alignment: Alignment.bottomCenter,

          )   ,
        ],
      )
      ,
    );
  }
}

