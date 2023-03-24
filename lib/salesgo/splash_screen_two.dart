import 'package:flutter/material.dart';
import 'dart:async';
import './after_login_page.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AfterLoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          color: Color.fromARGB(255, 8, 17, 102),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 350,
              ),
              Image.asset(
                'assets/images/download.png',
                // width: 500,
                // height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Signing in as HDFC",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              )
            ],
          ))),
    );
  }
}
