import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  IconData icon = Icons.favorite_border;


  void onPressedFav(){

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(
        'Agregado a tus favoritos',
      ),
    ));
    setState(() {
      icon = icon == Icons.favorite ? Icons.favorite_border: Icons.favorite; // Change icon and setState to rebuild
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: 'Favorite',
        onPressed:onPressedFav,
        child: Icon(icon),
      ),
    );
  }
}
