import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state_management/home_page_form.dart';
import 'state_management/home_page_view.dart';
import 'state_management/progress_value_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home page")),
        body: Container(
            padding: EdgeInsets.all(15),
            child: ChangeNotifierProvider(
              create: (_) => NameValue(),
              child: Column(
                children: [HomePageForm(), HomePageView()],
              ),
            )));
  }
}
