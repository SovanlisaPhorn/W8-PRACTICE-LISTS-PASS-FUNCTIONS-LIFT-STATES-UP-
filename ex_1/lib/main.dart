import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Label("Method 1: Loop in Array", bold: true),
              // TODO
              Column(
                children: [
                  Text("Start"),
                  for (var i = 0; i < 10; i++) Text('Item $i'),
                  Text("End"),
                ],
              )
              Label("Method 2: Map", bold: true),
              // TODO
              Column(
                children: [
                  Text("Start"),
                  ...numbers.map((item)).toList(),
                  Text("End"),
                ],
              )
              Label("Method 23: Dedicated Function", bold: true),
              // TODO
              ...getColorLabels(),
            ],
          ),
        ),
      ),
    ),
  );
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
