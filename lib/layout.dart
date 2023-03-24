import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar")
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name here',
                )
              )
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name here',
                )
              )
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Submit 🙂🙂🙂'),
              ),
            )
          ]
        ),
      )
      
    );
  }
}