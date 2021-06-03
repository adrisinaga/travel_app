import 'package:flutter/material.dart';
import 'package:tourism_app/pages/login_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Color(0xff00ADB5),
        ),
      ),
      home: LoginPage(),
    );
  }
}
