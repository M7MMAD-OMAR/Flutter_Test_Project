import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Testing"),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.red), flex: 1,),
            Expanded(child: Row(
             children: [
               Expanded(child: Column(
                 children: [
                   Expanded(child: Container(color: Colors.purple), flex: 1,),
                   Expanded(child: Row(
                     children: [
                       Expanded(child: Container(color: Colors.black), flex: 3,),
                       Expanded(child: Container(color: Colors.black26), flex: 1,),
                     ],
                   ), flex: 1,),
                 ]), flex: 2,
               ),
               Expanded(child: Container(color: Colors.teal), flex: 1,),
             ]), flex: 2,
            )
          ],
        ),
      ),
    );
  }
}