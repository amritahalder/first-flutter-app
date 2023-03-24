import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amberAccent[600]),
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  List<String> _randomWordPairs = [
    "money",
    "story",
    "fact",
    "month",
    "lot",
    "right",
    "study",
    "book",
    "eye",
    "job"
    "school"
  ];
  final _savedWordPairs = Set<String>();

  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _randomWordPairs.length,
      itemBuilder: (context, item) {
        return _buildRow(item);
      }
    );
  }

  Widget _buildRow(item) {
    final alreadySaved = _savedWordPairs.contains(_randomWordPairs[item]);

    return ListTile(
      title: Text(
        _randomWordPairs[item],
        style: TextStyle(color:alreadySaved ? Colors.red : null)
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _savedWordPairs.remove(_randomWordPairs[item]);
          } else {
            _savedWordPairs.add(_randomWordPairs[item]);
          }
        });
      }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Amrita")),
      body: _buildList()
    );
  }
}

