import 'package:flutter/material.dart';
import 'more_page.dart';

class MyLeaves extends StatefulWidget {
  const MyLeaves({super.key});

  @override
  State<MyLeaves> createState() => _MyLeavesState();
}

class _MyLeavesState extends State<MyLeaves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
        margin: EdgeInsets.only(top:30, ),
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
                  Navigator.pop(context, '/eighth');
                },
                icon: Icon(Icons.arrow_back,
                size: 25, 
                color: Colors.indigo[900]),
              ),
            ],
          ),
        ),
      ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("My Leaves",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 37, 51, 131),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 39, 54, 139),
                    ),
                    child: IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.add,
                      color: Colors.white,),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width:1,
                color: Color.fromARGB(255, 194, 191, 191)),
                borderRadius: BorderRadius.circular(15),
                // color: Color.fromARGB(255, 39, 54, 139),
                ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.pink,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Upcoming Leaves',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 33, 47, 131)
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Container(
                        // margin: EdgeInsets.only(bottom: 10),
                        child: IconButton(
                          iconSize: 25,
                          color: Color.fromARGB(255, 35, 52, 150),
                          icon: Icon(Icons.arrow_drop_down),
                          onPressed: () {
                            // ...
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width:1,
                color: Color.fromARGB(255, 194, 191, 191)),
                borderRadius: BorderRadius.circular(15),
                // color: Color.fromARGB(255, 39, 54, 139),
                ),
              child: TextButton(
                onPressed: () {
                // Navigator.pushNamed(context, '/eighth');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.pink,
                ),
                child: Row(
                  children: [
                    Text(
                      'previous Leaves',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 33, 47, 131)
                      ),
                    ),
                    SizedBox(
                        width: 140,
                    ),
                    IconButton(
                      iconSize: 25,
                      color: Color.fromARGB(255, 35, 52, 150),
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: () {
                        // ...
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}