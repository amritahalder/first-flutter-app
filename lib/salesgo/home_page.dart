import 'package:flutter/material.dart';
import 'dart:async';
import 'splash_screen_two.dart';
import 'forgot_pswd_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  
  String _userEmail = '';
  String _password = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate(); // false
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_password);
      Navigator.pushNamed(context, '/fourth');

      void initState() {
        super.initState();

        Timer(Duration(seconds: 3), () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreenTwo(),
              ));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 17, 102),
        body: Container(
            child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 130, bottom: 35, left: 35),
                  child: Column(
                    children: [
                      Text(
                        "Welcome too",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text("SalesGo",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white))
                    ],
                  )),
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        SizedBox(height: 40),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Username",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 8, 17, 102))),
                        ),
                        SizedBox(height: 10),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Email',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter your email address';
                                    }
                                    if (!RegExp(r'\S+@\S+\.\S+')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) => _userEmail = value,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'This field is required';
                                    }
                                    if (value.trim().length < 6) {
                                      return 'Password must be at least 6 characters in length';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) => _password = value,
                                ),
                              ],
                            )),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 
                              '/seventh');
                            },
                            // style: TextButton.styleFrom(
                            //   foregroundColor: Colors.pink,
                            // ),
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 35, 51, 142)),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 8, 17, 102)),
                                  ),
                                  onPressed: _trySubmitForm,
                                  child: Text('VERIFY'),
                                ))),
                      ],
                    )
                    )
                    )
                    )
          ],
        )));
  }
}
