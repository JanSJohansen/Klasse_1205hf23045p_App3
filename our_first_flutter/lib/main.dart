import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Person {
  int? id;
  String? name;

  //Person({int? id, String name = 'N/A'}) {
  //  this.id = id;
  //  this.name = name;
  //}

  Person({this.id, this.name});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tal = int.parse('23');
  Person? p1;

  _MyHomePageState() {
    p1 = Person(name: 'Robin', id: tal);
  }

  @override
  Widget build(BuildContext context) {
    print('I build()');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Person Id: ${p1?.id}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Person name: ${p1?.name}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
