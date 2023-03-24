import 'package:flutter/material.dart';
import './todoForm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './todoProvider.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Todo> todos = ref.watch(todosProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("List of Todos"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return TodoForm();
                }
              );
            },
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber,
              child: Center(child: Text('Entry')),
            );
          }
        ),
      )
    );
  }
}
