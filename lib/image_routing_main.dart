import 'package:flutter/material.dart';
import 'package:wordpair_genrator/routing_main.dart';

void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => DetailScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Amrita")),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Amrita", style: TextStyle(fontSize: 25)),
          Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
            child: Text('Looks like a RaisedButton'),
          )
        ],
      ),
      )
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Page"),
            ElevatedButton(
              onPressed: () { 
                Navigator.pop(context,true);
              },
              child: Text('Click here'),
            )
          ],
        ),
      )
    ); 
  }
}