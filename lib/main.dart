import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:desing/src/screens/home_screen.dart';
import 'package:desing/src/screens/basic_design.dart';
import 'package:desing/src/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //change color items statusbar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => HomeScreen(),
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollDesignScreen(),
      },
    );
  }
}
