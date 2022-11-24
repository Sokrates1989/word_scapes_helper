import 'package:flutter/material.dart';

import '../main.dart';

void main() {
  runApp(
    resultList(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class resultList extends StatelessWidget {
  final List<String> items;

  const resultList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(const MyApp());
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}