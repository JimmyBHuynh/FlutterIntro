import 'package:flutter/material.dart';

class FirstIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF46a002),
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
                backgroundImage: AssetImage('assets/images/documents.png'),
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
                          'Welcome to Document Tracker',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text('Track Your Documents',
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
