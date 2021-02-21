import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Homepage_Backgrounds.dart';
import 'main2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _launchURL() async {
    const url = 'https://indivisible.org/events';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
        backgroundColor: Colors.transparent,

        body: ListView(
            padding: const EdgeInsets.all(100),
            shrinkWrap: true,
            children: <Widget>[

              Container(
                height: 375,
              ),

              Container(
                height: 80,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ZipCodePage()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFF335C67), //FIXME
                  child: Text('Select Zip Code', style: TextStyle(fontSize: 20,
                    color: Colors.white,)),
                ),
              ),

              SizedBox(
                height: 80,
              ),

              Container(
                height: 80,
                child: RaisedButton(
                  onPressed: () {
                    _launchURL();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFF335C67), //FIXME
                  child: Text('Find events!', style: TextStyle(fontSize: 20,
                    color: Colors.white,)),
                ),
              ),
            ]
        )
        )

      ]
    );
  }
}