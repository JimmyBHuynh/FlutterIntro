import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'intro/first.dart';
import 'intro/forth.dart';
import 'intro/third.dart';
import 'intro/second.dart';

class StartIntro extends StatefulWidget {
  StartIntro({Key key}) : super(key: key);
  @override
  _StartIntroState createState() => _StartIntroState();
}

class _StartIntroState extends State<StartIntro>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;

  _handleTabSelection() {
    setState(() {
      _currentIndex = _controller.index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 4);
    _controller.addListener(_handleTabSelection);
  }

  _goBack() {
    _controller.animateTo(_currentIndex - 1);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _goBack(),
      child: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Stack(
            children: <Widget>[
              TabBarView(
                controller: _controller,
                children: [
                  new FirstIntro(),
                  new SecondIntro(),
                  new ThirdIntro(),
                  new ForthIntro(),
                ],
              ),
              new Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.white),
                    ),
                  ),
                  child: new TabBar(
                    onTap: (int index) {
                      if (index == 0) {
                        Navigator.of(context).push(MaterialPageRoute<Null>(
                            builder: (BuildContext context) {
                          return null; //Replace null with the widget you want to navigate to after the intro screen
                        }));
                      } else if (index == 2) {
                        if (_currentIndex == 3) {
                          Navigator.of(context).push(MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                            return null; //Replace null with the widget you want to navigate to after the intro screen
                          }));
                        } else
                          _controller.animateTo(_currentIndex + 1);
                      }
                    },
                    tabs: [
                      Tab(
                        text: "SKIP",
                      ),
                      Tab(
                        icon: new DotsIndicator(
                          dotsCount: 4,
                          position: _currentIndex,
                          decorator: DotsDecorator(
                            color: Color(0x80FFFFFF),
                            size: const Size.square(8.0),
                            activeColor: Colors.white,
                          ),
                        ),
                      ),
                      Tab(
                        icon: _currentIndex == 3
                            ? Icon(Icons.check)
                            : Icon(Icons.chevron_right),
                      )
                    ],
                    unselectedLabelColor: Colors.white,
                    indicator: UnderlineTabIndicator(
                        borderSide: const BorderSide(
                            width: 0, color: Colors.transparent)),
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
