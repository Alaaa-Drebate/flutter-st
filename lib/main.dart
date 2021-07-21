import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var qustionIndex = 0;
  var qustions = [
    "this is the first qustion",
    "this is the second qustion"
    ];

  void press() {
    setState(() => qustionIndex++);
    
    print(qustionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Text(qustions[qustionIndex]),
            ElevatedButton(
              child: Text("click me"),
              onPressed: press,
            )
          ],
        ),
      ),
    );
  }
}
