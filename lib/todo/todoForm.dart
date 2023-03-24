import 'package:flutter/material.dart';
import './todoProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoForm extends ConsumerWidget {
  String todoTitle = "";
  String todoDescription = "";

  void addTodo(context) {
    DateTime now = new DateTime.now();
    final todo = new Todo(now.millisecond, todoTitle, todoDescription);
    context.read(todosProvider).add(todo);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            "Add Todo",
            style: TextStyle(
              fontSize: 20
            )
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter todo title...',
            ),
            onChanged: (value) => { todoTitle = value },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter todo description...',
            ),
            onChanged: (value) => { todoDescription = value },
          ),
          ElevatedButton(
            onPressed: () {
              addTodo(context);
            },
            child: Text('Add Todo'),
          )
        ],
      )
    );
  }
}