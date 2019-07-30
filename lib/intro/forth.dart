import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForthIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Color(0xFFfba321),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(vertical: 80.0),
          child: Column(
            children: <Widget>[
              new CircleAvatar(
                backgroundColor: Color(0x80222426),
                minRadius: 90,
                maxRadius: 150,
                backgroundImage: AssetImage('assets/images/coder.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Find yourself ',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text('I hope you enjoy finding your passion',
                              style: TextStyle(
                                fontSize: 20.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
