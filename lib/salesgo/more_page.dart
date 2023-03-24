import 'package:flutter/material.dart';
import 'after_login_page.dart';
import 'Calender.dart';
import 'home_page.dart';
import 'more_page.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, bottom: 20,
          left: 20,
          right: 20),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'M',
                            style: TextStyle(fontSize: 35,
                            color: Color.fromARGB(255, 37, 53, 145),
                            fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.pink,
                            ),
                            child: Text(
                              'Manager 1',
                              style: TextStyle(fontSize: 22,
                              color: Color.fromARGB(255, 37, 53, 145)),
                            ),
                          ),
                          Text("Last login on 02:57 PM | 17 Mar 2023",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 125, 124, 124)
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 14,
                    bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'My Leaves',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Add and check leaves',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 147, 147, 148),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/ninth');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 14,
                    bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/tenth');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Reports',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Visit Trend, MTD Top 10',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 147, 147, 148),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/tenth');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 14,
                    bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/11th');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Universal Accounts',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Conveyance Report',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 147, 147, 148),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   width: 80,
                            // ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/11th');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 14,bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/12th');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Conveyance Report',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Download conveyance report',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 147, 147, 148),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/12th');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 14,
                    bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {
                        // final Uri url = Uri(
                        //   scheme: 'tel',
                        //   path: "8643286492"
                        // );
                        // if (await canLaunchUrl(url)){
                        //   await launchUrl(url);
                        // }
                        // else{
                        //   print('cannot lauunch this url');
                        // }
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Call Supports',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Help, FAQs etc',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 147, 147, 148),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.arrow_forward_ios),
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 22,
                    bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Change Password',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // SizedBox(
                                //   height: 6,
                                // ),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: Text(
                                //     'Add and check leaves',
                                //     style: TextStyle(
                                //       fontSize: 11,
                                //       color: Color.fromARGB(255, 147, 147, 148),
                                //     ),
                                //   ),
                                // )
                              ],
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.arrow_forward_ios),
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 22,
                    bottom: 10),
                    width: 380,
                    height: 80,
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
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.pink,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Sign Out',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 40, 58, 155),
                                      fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // SizedBox(
                                //   height: 6,
                                // ),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: Text(
                                //     'Add and check leaves',
                                //     style: TextStyle(
                                //       fontSize: 11,
                                //       color: Color.fromARGB(255, 147, 147, 148),
                                //     ),
                                //   ),
                                // )
                              ],
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 196, 197, 198), 
                                width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                iconSize: 15,
                                color: Color.fromARGB(255, 35, 52, 150),
                                icon: Icon(Icons.login_rounded),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
            ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 45, 68, 202),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => AfterLoginPage()),
                  );
                },
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.account_box,
                  color: Color.fromARGB(255, 45, 68, 202),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //     MaterialPageRoute(builder: (context) => HomePage()),
                  // );
                },
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.group,
                  color: Color.fromARGB(255, 45, 68, 202),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //     MaterialPageRoute(builder: (context) => CalenderPage()),
                  // );
                },
              ),
              label: "Team"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.room_rounded,
                  color: Color.fromARGB(255, 45, 68, 202),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalenderPage()),
                  );
                },
              ),
              label: "Follow ups"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color.fromARGB(255, 45, 68, 202),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MorePage()),
                  );
                },
              ),
              label: "More"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 45, 68, 202),
        onTap: _onItemTapped,
      ),
    );
  }
}
