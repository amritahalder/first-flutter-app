import 'package:flutter/material.dart';
import '';

class ConveyavcePage extends StatefulWidget {
  const ConveyavcePage({super.key});

  @override
  State<ConveyavcePage> createState() => _ConveyavcePageState();
}

class _ConveyavcePageState extends State<ConveyavcePage> {
final _formKey = GlobalKey<FormState>();
  
  String _from = '';
  String _to = '';

void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate(); // false
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_from);
      debugPrint(_to);
      Navigator.pushNamed(context, '/fourth');

      void initState() {
        super.initState();

        // Timer(Duration(seconds: 3), () {
        //   Navigator.pushReplacement(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => SplashScreenTwo(),
        //       ));
        // });
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Color.fromARGB(255, 231, 230, 230),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:30, bottom: 10),
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/eighth');
                  },
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/eighth');
                        },
                        icon: Icon(Icons.arrow_back,
                        size: 25, 
                        color: Colors.indigo[900]),
                      ),
                      Text(
                        'My conveyance',
                        style: TextStyle(fontSize: 22,
                        color: Color.fromARGB(255, 33, 52, 158),
                        fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Download Conveyance Report",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 40, 54, 135)
                ),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 25),
                // padding: EdgeInsets.only(left: 5, right: 5),
                width: 320,
                height: 220,
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
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 200, 197, 197),
                          )
                        )
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Select Date Ranqe",
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 47, 136),
                            fontSize: 18
                          ),
                        )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'From',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(10))),
                        obscureText: true,
                        // validator: (value) {
                        //   if (value == null || value.trim().isEmpty) {
                        //     return 'This field is required';
                        //   }
                        //   if (value.trim().length < 6) {
                        //     return 'Password must be at least 6 characters in length';
                        //   }
                        //   return null;
                        // },
                        // onChanged: (value) => _from = value,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'To',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(10))),
                        obscureText: true,
                        // validator: (value) {
                        //   if (value == null || value.trim().isEmpty) {
                        //     return 'This field is required';
                        //   }
                        //   if (value.trim().length < 6) {
                        //     return 'Password must be at least 6 characters in length';
                        //   }
                        //   return null;
                        // },
                        // onChanged: (value) => _to = value,
                      ),
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}