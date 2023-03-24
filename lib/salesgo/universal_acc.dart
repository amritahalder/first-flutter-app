import 'package:flutter/material.dart';

class UniversalAccPage extends StatefulWidget {
  const UniversalAccPage({super.key});

  @override
  State<UniversalAccPage> createState() => _UniversalAccPageState();
}

class _UniversalAccPageState extends State<UniversalAccPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:30, bottom: 20),
        child: TextButton(
          onPressed: () {
            // Navigator.push(
            //     context,
            //       MaterialPageRoute(builder: (context) => AfterLoginPage()),
            //   );
          },
          child: Row(
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context, '/second');
                },
                icon: Icon(Icons.arrow_back,
                size: 25, 
                color: Colors.indigo[900]),
              ),
              Text(
                'Universal Accounts',
                style: TextStyle(fontSize: 22,
                color: Color.fromARGB(255, 33, 52, 158),
                fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 45,
              ),
              Container(
                child: IconButton(
                  iconSize: 25,
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 33, 52, 158)
                  ),
                  onPressed: () {
                    Navigator.pop(context, '/eighth');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}