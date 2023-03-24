import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(
  child: MyApp()
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amberAccent[600]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Riverpod App")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ViewComponent(),
              ButtonComponent()
            ],
          ),
        ),
      )
    );
  }
}

class ViewComponent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(counterStateProvider);

    // var name = ref.watch(nameStateProvider);

    return Column(
      children: [
        Text('Value: $value', style: TextStyle(fontSize: 30),),
        // Text('Name: $name', style: TextStyle(fontSize: 30),),
      ],
    );
  }
}

class ButtonComponent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(counterStateProvider.notifier).state++;
          },
          child: const Text('Increments ++'),
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(counterStateProvider.notifier).state--;
          },
          child: const Text('Decrement --'),
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     ref.read(nameStateProvider.notifier).state = "Kishore";
        //   },
        //   child: const Text('Change Name'),
        // )
      ],
    );
  }
}

final counterStateProvider = StateProvider<int>((ref) => 0);

// final nameStateProvider = StateProvider<String>((ref) => "Amrita");