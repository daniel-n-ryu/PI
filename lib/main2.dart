import 'dart:ui';

import 'package:flutter/material.dart';

import 'linkpage.dart';


class ZipCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyZipCode()
    );
  }
}

class MyZipCode extends StatefulWidget {
  MyZipCode({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyZipCodeState createState() => _MyZipCodeState();
}

class _MyZipCodeState extends State<MyZipCode> {
  TextEditingController nameController = TextEditingController();
  String fullName = 'Enter Zip Code';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Map(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(child: Column(children: <Widget>[
            Container(
              height: 300,
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    //focusColor: Colors.black,
                    labelText: 'Zip Code',
                  ),
                  onChanged: (text) {
                    setState(() {
                      if (text.length == 5) {
                        if (text.compareTo('92064') == 0) {
                          fullName = 'Zip Code Found!';
                        }
                        else {
                          fullName = 'Invalid Zip Code';
                        }
                      }
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )
            ),
            TextButton(
                style: TextButton.styleFrom(
                 // primary: Colors.white,
                  backgroundColor: Colors.teal,
                  //onSurface: Colors.grey,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      //fontStyle: FontStyle.itali
                  ),
                ),

                child: Text(fullName),
              ),

            TextButton(
                onPressed: () {
                  //navigateToPage(context);
                  if (fullName.compareTo('Zip Code Found!') == 0)
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationDetail()));

                  else
                    fullName = 'Invalid Zip Code';
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.teal,
                  onSurface: Colors.grey,
                ),
                child: Text('Load Reps')
            ),

          ]
          )
          )),
    ]);
  }

  Future navigateToSubPage(context) async {
    print('dog');
 Navigator.push(context, MaterialPageRoute(builder: (context) => LocationDetail()));
 }
}

class Map extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/google_map.jpeg"),
          fit: BoxFit.cover
        ),
      ),
    );
  }

}




