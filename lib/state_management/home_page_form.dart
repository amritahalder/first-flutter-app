import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'progress_value_provider.dart';

class HomePageForm extends StatefulWidget {
  @override
  State<HomePageForm> createState() => HomePageFormState();
}

class HomePageFormState extends State<HomePageForm> {
  String name = "";

  void setName() {
    Provider.of<NameValue>(context, listen: false).name = name;
  }

  @override
  Widget build(BuildContext context) {
    final nameState = Provider.of<NameValue>(context).name;

    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter name here...',
          ),
          onChanged: (value) => {name = value},
        ),
        ElevatedButton(
          onPressed: () {
            setName();
          },
          child: Text('Submit'),
        )
      ],
    );
  }
}
