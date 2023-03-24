import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'home_page.dart';
import 'more_page.dart';
import 'after_login_page.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  int index = 0;
  void _onDaySelected (DateTime day, DateTime focusedDay ) {
    setState(() {
      today = day;
    });
  }
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide(color: Color.fromARGB(255, 213, 209, 209),
                    //   width: 2))
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 39, 56, 155)),
                          ),
                          onPressed: () { },
                          child: Text('Follow ups',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                        IconButton(
                          onPressed: (){
                          },
                          icon: Icon(Icons.add,
                          size: 25, 
                          color: Colors.indigo[900]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //       border: Border(bottom: BorderSide(color: Color.fromARGB(255, 213, 209, 209),
                    //       width: 2))
                    //     ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 43, 61, 169)),
                          ),
                          onPressed: () { },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('14',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Mar 2023 Monday',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.black
                            )
                          ),
                          child: Container(
                            width: 110,
                            height: 30,
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 44, 61, 159)),
                              ),
                              onPressed: () { },
                              child: Row(
                                children: [
                                  Text('Month',
                                  style: TextStyle(
                                    fontSize: 14
                                  ),),
                                  IconButton(
                                    onPressed: (){
                                    },
                                    icon: Icon(Icons.arrow_drop_down_sharp,
                                    size: 20, 
                                    color: Colors.indigo[900]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // color: Colors.amber,
                    child: TableCalendar(
                      headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true,
                      ),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      onDaySelected: _onDaySelected,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 32, 51, 157)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Text(
                          '<',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
            ),
          ),
            
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
