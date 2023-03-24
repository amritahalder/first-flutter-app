import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'progress_value_provider.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameState = Provider.of<NameValue>(context).name;

    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Text("My name is ${nameState}", style: TextStyle(fontSize: 24)),
    );
  }
}
