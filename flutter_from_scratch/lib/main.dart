import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter from scratch',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyStateFulWidget(),
    );
  }
}

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({super.key});

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  String inputStr = "";
  String outputStr = "";

  void btnClicked() {
    setState(() {  
      outputStr = inputStr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter from scratch'),
        leading: BackButton(onPressed: () {
          //print('Back Buttton');
        }),
      ),
      body: Center(
          child: Column(
        children: [
          const Text('Så er det body'),
          TextField(
            onChanged: (value) {
              inputStr = value;
            },
          ),
          ElevatedButton(onPressed: btnClicked, child: const Text('Click Me')),
          Text('You wrote: $outputStr'),
        ],
      )),
    );
  }
}
