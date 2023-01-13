import 'package:flutter/material.dart';
import 'package:test_project/ExpandedPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Testing',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ExpandedPage(),
    );
  }
}


