import 'package:flutter/material.dart';

class BackgroundImage extends StatefulWidget {
  @override
  _BackgroundImageState createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/oftw.PNG'),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}
