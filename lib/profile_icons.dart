import 'package:flutter/material.dart';

class ProfileIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final buttom_bookmark = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'Cargando Favoritos',
          ),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(

          left: 20,
          right: 25
        ),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          color: Colors.white
        ),
        child: Center(
          child: Icon(
            Icons.bookmark_border,
            color: Color(0xFF584CD1),
          ),
        ),
      ),
    );

    final buttom_tv = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'Cargando Favoritos',
          ),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(

            right: 25
        ),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white70
        ),
        child: Center(
          child: Icon(
            Icons.cast,
            color: Color(0xFF584CD1),
          ),
        ),
      ),
    );

    final buttom_add = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'Cargando Favoritos',
          ),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(

            right: 25
        ),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white
        ),
        child: Container(
          child: Icon(
            Icons.add,
            color: Color(0xFF584CD1),
            size: 40,
          ),
        ),
      ),
    );

    final buttom_mail = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'Cargando Favoritos',
          ),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(

            right: 25
        ),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white70
        ),
        child: Center(
          child: Icon(
            Icons.markunread,
            color: Color(0xFF584CD1),
          ),
        ),
      ),
    );

    final buttom_people = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'Cargando Favoritos',
          ),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white70
        ),
        child: Center(
          child: Icon(
            Icons.person,
            color: Color(0xFF584CD1),
          ),
        ),
      ),
    );

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: <Widget>[
          buttom_bookmark,
          buttom_tv,
          buttom_add,
          buttom_mail,
          buttom_people
        ],
      ),
    );
  }
}
