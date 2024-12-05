import 'package:flutter/material.dart';
import 'pages/loading_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nest OJT Angelo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoadingPage(),
    );
  }
} 