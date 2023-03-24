import 'package:flutter/material.dart';
import 'home_page.dart';

class ForgotPassWordPage extends StatefulWidget {
  const ForgotPassWordPage({super.key});

  @override
  State<ForgotPassWordPage> createState() => _ForgotPassWordPageState();
}

class _ForgotPassWordPageState extends State<ForgotPassWordPage> {
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate(); // false
    if (isValid == true) {
      // debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      Navigator.pop(context, '/sixth');

      // void initState() {
      //   super.initState();

      //   Timer(Duration(seconds: 3), () {
      //     Navigator.pushReplacement(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => SplashScreenTwo(),
      //         ));
      //   });
      // }
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
                  margin: EdgeInsets.only(top: 160, bottom: 25, left: 25),
                  child: Column(
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
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
                          child: Text("Enter E-mail Id",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 8, 17, 102),
                                  )),
                        ),
                        SizedBox(height: 10),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      // labelText: 'Email',
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
                                  // onChanged: (value) => _userEmail = value,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("A mail with password reset link will be sent to the above mail id.",
                                style: TextStyle(

                                )
                                )
                              ],
                            )),
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
                              onPressed: 
                              _trySubmitForm
                              ,
                              onFocusChange: (value) {
                                Navigator.pushNamed(context, '/sixth');
                              },
                              child: Text('Send',
                              style: TextStyle(
                                fontSize: 18
                              ),
                              ),
                          )
                        )
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                  child:  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 39, 58, 161)),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context, 
                                      '/');
                                    },
                                    child: const Text('<'),
                                  ),
                                )
                                ),
                      ],
                    ))))
          ],
        ))
        );
  }
}