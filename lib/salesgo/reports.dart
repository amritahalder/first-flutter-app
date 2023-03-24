import 'package:flutter/material.dart';
import 'more_page.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, right: 20, bottom: 20),
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
                    onPressed: () {
                      Navigator.pop(context, '/eighth');
                    },
                    icon: Icon(Icons.arrow_back,
                        size: 25, color: Colors.indigo[900]),
                  ),
                  Text(
                    'Reports',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 33, 52, 158),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  width: 156,
                  height: 90,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 20,
                            spreadRadius: 10,
                          )
                        ],
                      ),
                    child: Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.group,
                        color: Color.fromARGB(255, 37, 52, 137),),
                        onPressed: () {
                          print("Icon Button clicked");
                        },
                      ),
                      // padding:
                      //   EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                    ),
                    Column(
                      children: [
                        Text("Accounts Touched",
                        style: TextStyle(
                          color: Color.fromARGB(255, 37, 52, 137),
                        ),)
                      ]
                    ),
                  ],
                )),
                SizedBox(
                  width:20
                ),
                Container(
                  width: 156,
                  height: 90,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 20,
                            spreadRadius: 10,
                          )
                        ],
                      ),
                    child: Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.file_copy_sharp,
                        color: Color.fromARGB(255, 37, 52, 137),),
                        onPressed: () {
                          print("Icon Button clicked");
                        },
                      ),
                      // padding:
                      //   EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                    ),
                    Column(
                      children: [
                        Text("Note Type",
                        style: TextStyle(
                          color: Color.fromARGB(255, 37, 52, 137),
                        ),)
                      ]
                    ),
                  ],
                ))
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  width: 156,
                  height: 90,
                  // padding: EdgeInsets.only(top: 8,
                  // bottom: 8,
                  // left: 35,
                  // right: 35),
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 20,
                            spreadRadius: 10,
                          )
                        ],
                      ),
                    child: Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.file_copy,
                        color: Color.fromARGB(255, 37, 52, 137),),
                        onPressed: () {
                          print("Icon Button clicked");
                        },
                      ),
                      // padding:
                      //   EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                    ),
                    Column(
                      children: [
                        Text("Visit Type",
                        style: TextStyle(
                          color: Color.fromARGB(255, 37, 52, 137),
                        ),)
                      ]
                    ),
                  ],
                )),
                SizedBox(
                  width:20
                ),
                Container(
                  width: 156,
                  height: 90,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 20,
                            spreadRadius: 10,
                          )
                        ],
                      ),
                    child: Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.account_box,
                        color: Color.fromARGB(255, 37, 52, 137),),
                        onPressed: () {
                          print("Icon Button clicked");
                        },
                      ),
                      // padding:
                      //   EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                    ),
                    Column(
                      children: [
                        Text("BIGBRO",
                        style: TextStyle(
                          color: Color.fromARGB(255, 37, 52, 137),
                        ),)
                      ]
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
