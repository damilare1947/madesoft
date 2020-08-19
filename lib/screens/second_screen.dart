import 'package:flutter/material.dart';
import 'package:madesoft/widgets/activity.dart';
import 'package:madesoft/widgets/dashboard.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = 'second_screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(accentColor: Color(0xffE0115F)),
      home: SafeArea(
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Row(
                  children: <Widget>[
                    Spacer(),
                    Icon(Icons.more_vert, color: Color(0xffE0115F))
                  ],
                ),
                bottom: TabBar(
                  indicatorColor: Color(0xffE0115F),
                  tabs: <Widget>[
                    Tab(
                      child: Text('DASHBOARD',
                          style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text('ACTIVITY',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              body: TabBarView(children: <Widget>[
                Dashboard(),
                Activity(),
              ])),
        ),
      ),
    );
  }
}
