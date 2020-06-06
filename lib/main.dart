import 'package:flutter/material.dart';
import 'MessagePage.dart';
import 'HomePage.dart';
import 'ChatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QAQ',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // primarySwatch: Colors.brown,
      //   canvasColor: Color.fromRGBO(85,198,121,1),
      // ),
      // initialRoute: '/login',
      routes: {
        '/index': (context) => MessagePage(),
        '/chat': (context) => ChatPage(),
      },
      home: HomePage(),
    );
  }
}
