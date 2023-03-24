import 'package:flutter/material.dart';
import 'after_login_page.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:30, right: 20, bottom: 20),
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
                'Notifications',
                style: TextStyle(fontSize: 22,
                color: Color.fromARGB(255, 33, 52, 158),
                fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}