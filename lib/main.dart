import 'package:flutter/material.dart';
import './salesgo/home_page.dart';
import './salesgo/after_login_page.dart';
import './salesgo/splash_screen.dart';
import './salesgo/splash_screen_two.dart';
import './salesgo/calender.dart';
import './salesgo/notifications.dart';
import './salesgo/forgot_pswd_page.dart';
import './salesgo/more_page.dart';
import './salesgo/my_leaves.dart';
import './salesgo/reports.dart';
import './salesgo/universal_acc.dart';
import './salesgo/conveyance.dart';
import './salesgo/chng_pswd.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/seventh',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => const AfterLoginPage(),
        '/third': (context) => const SplashScreen(),
        '/fourth': (context) => const SplashScreenTwo(),
        '/fifth': (context) => const CalenderPage(),
        '/sixth': (context) => const NotificationPage(),
        '/seventh': (context) => const ForgotPassWordPage(),
        '/eighth': (context) => const MorePage(),
        '/ninth': (context) => const MyLeaves(),
        '/tenth': (context) => const Reports(),
        '/11th': (context) => const UniversalAccPage(),
        '/12th': (context) => const ConveyavcePage(),
        // '/13th': (context) => const ChangePassWordPage(),
      },
    );
  }
}





