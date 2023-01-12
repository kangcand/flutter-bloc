import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Stream<int> counStream() async* {
    for (int i = 1; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Bloc"),
      ),
      body: Center(
        child: StreamBuilder<Object>(
            stream: counStream(),
            builder: (context, snapshot) {
              return Text(
                "0",
                style: TextStyle(fontSize: 20),
              );
            }),
      ),
    );
  }
}
