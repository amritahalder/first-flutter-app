import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/details',
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => DetailsPage()
      },
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
            ),
            ElevatedButton(
              child: Text('Second page'),
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
            )
          ]
        ),
      )
      
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details page")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Detilas screen"),
            Container(
              child: ElevatedButton(
                child: Text('First screen'),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              )
            )
          ]
        )
      )
    );
  }
}