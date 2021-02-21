import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(LocationDetail());

class LocationDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const TextStyle header = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );

    return MaterialApp(
        home: ListView(
          //padding: const EdgeInsets.all(16),

          children: <Widget>[
            Column(
                children: <Widget> [
                  Container(
                    height: 50,
                    width: 500,
                    color: Colors.orange,
                    child: Text(
                      'National',
                      style: header,
                    ),
                  ),
                  Container(
                    width: 500,
                    //height: 100,
                    color: Colors.orange,
                    child: TextButton(
                        onPressed: () {
                          //navigateToPage(context);
                          _launchURL('https://www.whitehouse.gov/contact');
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                          onSurface: Colors.grey,
                        ),
                        child: Text('Contact White House')
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 500,
                    color: Colors.orange,
                  ),
                  ]
            ),
            Column(
                children: <Widget> [
                  Container(
                    height: 50,
                    width: 500,
                    color: Colors.orange,
                    child: Text(
                      'State',
                      style: header,
                    ),
                  ),
                  Container(
                    width: 500,
                    //height: 100,
                    color: Colors.orange,
                    child: TextButton(
                        onPressed: () {
                          //navigateToPage(context);
                          _launchURL('tel: (916) 445-2841');
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                          onSurface: Colors.grey,
                        ),
                        child: Text('Call Governor')
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 500,
                    color: Colors.orange,
                  ),
                ]
            ),
            Column(
                children: <Widget> [
                  Container(
                    height: 50,
                    width: 500,
                    color: Colors.orange,
                    child: Text(
                      'Local',
                      style: header,
                    ),
                  ),
                  Container(
                    width: 500,
                    //height: 100,
                    color: Colors.orange,
                    child: TextButton(
                        onPressed: () {
                          //navigateToPage(context);
                          _launchURL('https://poway.org/636/Council-Meetings');
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                          onSurface: Colors.grey,
                        ),
                        child: Text('Town Hall Meetings')
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 500,
                    color: Colors.orange,
                  ),
                ]
            ),
          ],
        )
    );
  }

  _launchURL(url) async {
   // url = 'https://urldefense.com/v3/__https://indivisible.org/events__;!!Mih3wA!TZhGOsG4iY-bOVlcOPJZJ4tdTvCELagUWk35fKFw1j0lObwrRLPoPlJTPWZKRF6I$ ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}