// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wordpair_genrator/salesgo/calender.dart';
import 'package:wordpair_genrator/salesgo/forgot_pswd_page.dart';
import 'package:wordpair_genrator/salesgo/notifications.dart';
import 'package:wordpair_genrator/salesgo/home_page.dart';
import 'package:wordpair_genrator/salesgo/more_page.dart';

Future<void> _handleSubmit(BuildContext context) async {}

class AfterLoginPage extends StatefulWidget {
  const AfterLoginPage({super.key});

  @override
  State<AfterLoginPage> createState() => _AfterLoginPageState();
}

class _AfterLoginPageState extends State<AfterLoginPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  int index = 0;
  // final screens = [
  //   Center(child: Text("Amrita",
  //   style: TextStyle(fontSize: 40))),
  //   Center(child: Text("Amrita",
  //   style: TextStyle(fontSize: 40))),
  //   Center(child: Text("Amrita",
  //   style: TextStyle(fontSize: 40))),
  //   Center(child: Text("Amrita",
  //   style: TextStyle(fontSize: 40)))
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text("Hello, HDFC Executive 3",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 26, 40, 171))),
                              SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationPage()),
                                  );
                                },
                                icon: Icon(Icons.notifications,
                                    size: 25, color: Colors.indigo[900]),
                              )
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 2,
                        // ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Your activities for today!",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 26, 40, 171))))
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 20, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: SizedBox(
                                // height: 100,
                                // width: 100,
                                child: Container(
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(15.0),
                            child: Column(
                              children: [
                                TextButton(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 20, right: 20, bottom: 5, top: 5),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(218, 232, 250, 1),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 33, 54, 174),
                                            width: 1)),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  // color: Colors.amber,
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(15),
                                                  height: 350,
                                                  child: Center(
                                                    child: Column(
                                                        // mainAxisAlignment: MainAxisAlignment.center,
                                                        // mainAxisSize: MainAxisSize.min,
                                                        children: <Widget>[
                                                          Row(
                                                            children: [
                                                              Container(
                                                                  // color: Colors.blue,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              20,
                                                                          left:
                                                                              35),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Container(
                                                                          margin: EdgeInsets.all(
                                                                              30),
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Align(
                                                                                child: Container(
                                                                                    child: Column(
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 50,
                                                                                      height: 50,
                                                                                      child: IconButton(
                                                                                        icon: Icon(Icons.schedule),
                                                                                        onPressed: () {
                                                                                          print("Icon Button clicked");
                                                                                        },
                                                                                      ),
                                                                                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                                                                                      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color.fromARGB(255, 45, 68, 202))),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5,
                                                                                    ),
                                                                                    Column(children: [
                                                                                      Text("Schedule\nFollow up")
                                                                                    ])
                                                                                  ],
                                                                                )),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 80,
                                                                                // height: 40
                                                                              ),
                                                                              Align(
                                                                                  child: Container(
                                                                                      child: Column(
                                                                                children: [
                                                                                  Container(
                                                                                    width: 50,
                                                                                    height: 50,
                                                                                    child: IconButton(
                                                                                      icon: Icon(Icons.group),
                                                                                      onPressed: () {
                                                                                        print("Icon Button clicked");
                                                                                      },
                                                                                    ),
                                                                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                                                                                    decoration: BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                      border: Border.all(color: Color.fromARGB(255, 45, 68, 202)),
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 5,
                                                                                  ),
                                                                                  Column(children: [
                                                                                    Text("Add Group\nMeeting")
                                                                                  ]),
                                                                                ],
                                                                              )))
                                                                            ],
                                                                          ))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          border:
                                                                              Border(
                                                                    top:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .grey,
                                                                      width: 1,
                                                                    ),
                                                                  )),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Container(
                                                                      margin: EdgeInsets
                                                                          .all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Container(
                                                                              child: Row(
                                                                            children: [
                                                                              Container(
                                                                                child: IconButton(
                                                                                  icon: Icon(Icons.roundabout_left_rounded),
                                                                                  onPressed: () {
                                                                                    print("Icon Button clicked");
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                "Update  Meeting",
                                                                                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 45, 68, 202)),
                                                                              ),
                                                                            ],
                                                                          )),
                                                                          // SizedBox(
                                                                          //   height: 10,
                                                                          // ),
                                                                          Row(
                                                                            children: [
                                                                              Container(
                                                                                child: IconButton(
                                                                                  icon: Icon(Icons.schedule),
                                                                                  onPressed: () {
                                                                                    print("Icon Button clicked");
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                "Update Internal Meeting",
                                                                                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 32, 60, 183)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ))
                                                            ],
                                                          )
                                                        ]),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          icon: Icon(Icons.add,
                                              size: 30,
                                              color: Colors.indigo[900]),
                                        ),
                                        Text(
                                          " Quick\nActions",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 45, 68, 202)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          // color: Colors.amber,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.all(15),
                                          height: 350,
                                          child: Center(
                                            child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                // mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Row(
                                                    children: [
                                                      Container(
                                                          // color: Colors.blue,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 10,
                                                                  bottom: 20,
                                                                  left: 35),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              30),
                                                                  child: Row(
                                                                    children: [
                                                                      Align(
                                                                        child: Container(
                                                                            child: Column(
                                                                          children: [
                                                                            Container(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: IconButton(
                                                                                icon: Icon(Icons.schedule),
                                                                                onPressed: () {
                                                                                  print("Icon Button clicked");
                                                                                },
                                                                              ),
                                                                              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 30),
                                                                              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color.fromARGB(255, 45, 68, 202))),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 5,
                                                                            ),
                                                                            Column(children: [
                                                                              Text("Schedule\nFollow up")
                                                                            ])
                                                                          ],
                                                                        )),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            80,
                                                                        // height: 40
                                                                      ),
                                                                      Align(
                                                                          child: Container(
                                                                              child: Column(
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                50,
                                                                            child:
                                                                                IconButton(
                                                                              icon: Icon(Icons.group),
                                                                              onPressed: () {
                                                                                print("Icon Button clicked");
                                                                              },
                                                                            ),
                                                                            padding: EdgeInsets.only(
                                                                                top: 5,
                                                                                bottom: 5,
                                                                                left: 5,
                                                                                right: 30),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(color: Color.fromARGB(255, 45, 68, 202)),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                5,
                                                                          ),
                                                                          Column(
                                                                              children: [
                                                                                Text("Add Group\nMeeting")
                                                                              ]),
                                                                        ],
                                                                      )))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  border:
                                                                      Border(
                                                            top: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                              width: 1,
                                                            ),
                                                          )),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .all(10),
                                                              child: Column(
                                                                children: [
                                                                  Container(
                                                                      child:
                                                                          Row(
                                                                    children: [
                                                                      Container(
                                                                        child:
                                                                            IconButton(
                                                                          icon:
                                                                              Icon(
                                                                            Icons.roundabout_left_rounded,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                31,
                                                                                50,
                                                                                158),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            print("Icon Button clicked");
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        "Update  Meeting",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                45,
                                                                                68,
                                                                                202)),
                                                                      ),
                                                                    ],
                                                                  )),
                                                                  // SizedBox(
                                                                  //   height: 10,
                                                                  // ),
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                        child:
                                                                            IconButton(
                                                                          icon:
                                                                              Icon(Icons.schedule),
                                                                          onPressed:
                                                                              () {
                                                                            print("Icon Button clicked");
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        "Update Internal Meeting",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                32,
                                                                                60,
                                                                                183)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ))
                                                    ],
                                                  )
                                                ]),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ))),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 30,
                                            right: 30),
                                        decoration: BoxDecoration(
                                          boxShadow: [],
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        right: BorderSide(
                                                  color: Colors.grey,
                                                ))),
                                                // color: Colors.amber,
                                                padding:
                                                    EdgeInsets.only(right: 20),
                                                child: Column(
                                                  children: [
                                                    Text("114",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    45,
                                                                    68,
                                                                    202),
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text("New",
                                                        style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 45, 68, 202),
                                                          fontSize: 12,
                                                        )),
                                                  ],
                                                ))
                                          ],
                                        ))
                                  ],
                                ),
                                Container(
                                  // color: Colors.amber,
                                  margin: EdgeInsets.all(25),
                                  child: Column(
                                    children: [
                                      Text("129",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 45, 68, 202),
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text("BIGBRO",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 45, 68, 202),
                                            fontSize: 12,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ))
                      ],
                    )),
                SingleChildScrollView(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      // width: 300,
                      // margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Average Visits Per Day",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 45, 68, 202),
                                            fontSize: 15))),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              child: Container(
                                                  child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 5,
                                                        bottom: 5,
                                                        left: 5,
                                                        right: 30),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      color: Color.fromARGB(
                                                          255, 197, 219, 239),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                        )
                                                      ],
                                                    ),
                                                    child: Column(children: [
                                                      Text("0.0",
                                                          style: TextStyle(
                                                              color: Colors.red,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Text("By self")
                                                    ]),
                                                  ),
                                                ],
                                              )),
                                            ),
                                            SizedBox(width: 20, height: 40),
                                            Align(
                                                child: Container(
                                                    child: Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top: 5,
                                                      bottom: 5,
                                                      left: 5,
                                                      right: 20),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    color: Color.fromARGB(
                                                        255, 197, 219, 239),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  ),
                                                  child: Column(children: [
                                                    Text("0.0",
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text("By Team")
                                                  ]),
                                                ),
                                              ],
                                            )))
                                          ],
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 45, 68, 202)),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "(00)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 45, 68, 202)),
                        )
                      ],
                    )),
                SizedBox(
                  height: 0,
                ),
                Align(
                    child: Container(
                        // margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            SizedBox(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    _handleSubmit(context);
                                  },
                                  child: Row(children: <Widget>[
                                    Text(
                                      "Self",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 45, 68, 202),
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    )
                                  ])),
                            ),
                            SizedBox(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    _handleSubmit(context);
                                  },
                                  child: Row(children: <Widget>[
                                    Text(
                                      "Universal Accounts",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 45, 68, 202),
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    )
                                  ])),
                            ),
                          ],
                        ))),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Container(
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
                      // width: 300,
                      // margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            width: 350,
                            height: 100,
                            // padding: EdgeInsets.only(top: 40, bottom: 40, left: 100, right: 100),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(22),
                                ),
                                // Align(
                                //   alignment: Alignment.center,
                                // ),
                                Text(
                                  'No todos for today!!!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 45, 68, 202),
                                      fontWeight: FontWeight.w300),
                                )
                                // ElevatedButton(
                                //   style: ButtonStyle(
                                //     backgroundColor:
                                //   ),
                                //   onPressed: () {
                                //     // Navigator.pop(context, '/');
                                //   },
                                //   child: Text('No todos for today!!!'),
                                // )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                // SizedBox(
                //     height: 50,
                //     width: 50,
                //     child: ClipRRect(
                //         borderRadius: BorderRadius.circular(50),
                //         child: ElevatedButton(
                //           style: ButtonStyle(
                //             backgroundColor: MaterialStateProperty.all<Color>(
                //                 Color.fromARGB(255, 45, 68, 202)),
                //           ),
                //           onPressed: () {
                //             Navigator.pop(context, '/');
                //           },
                //           child: Text(
                //             '<',
                //             style: TextStyle(
                //                 fontSize: 20, fontWeight: FontWeight.bold),
                //           ),
                //         ))),
              ],
            ),
          ),
          // screens[index],
        ],
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
