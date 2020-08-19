import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madesoft/provider/data.dart';
import 'package:madesoft/screens/first_screen.dart';
import 'package:madesoft/screens/second_screen.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ProductServices(),
        ),
      ],
      child: MaterialApp(
          title: 'Madesoft',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: FirstScreen(),
          routes: {
            SecondScreen.routeName: (context) => SecondScreen(),
          }),
    );
  }
}
