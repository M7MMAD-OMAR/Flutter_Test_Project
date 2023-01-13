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
      title: 'Age App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Age App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textFieldBirthYear = TextEditingController();
  dynamic birthYear = 0;

  void getAge() => {
        setState(() {
          birthYear = num.parse(textFieldBirthYear.text.toString());
          if (birthYear < 1900 || birthYear > DateTime.now().year) {
            birthYear = "Error: Birth Year must between 1900 and now year";
          } else {
            birthYear = DateTime.now().year - birthYear;
          }
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age App Demo"),
      ),
      body: Column(
        children: [
          TextField(
            controller: textFieldBirthYear,
            decoration: InputDecoration(
              hintText: "Enter your Birth Year",
              label: Text("Birth Year"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: getAge, child: Text("Get Age")),
          SizedBox(
            height: 10,
          ),
          Text("$birthYear"),
        ],
      ),
    );
  }
}
