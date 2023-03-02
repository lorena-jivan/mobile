import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class Data {
  static const padding = const EdgeInsets.all(8.0);
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

final list = [
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
  "ciao ciao ciao ciao",
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questa è un app'),
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     const Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //     'Hello World!',
        //     style: TextStyle(color: Colors.green, fontSize: 30),
        //     )
        //   ),
        //   Row(
        //     children: const [
        //       Text(
        //         'Ciao mondo!',
        //         style: TextStyle(color: Colors.blue, fontSize: 45),
        //       ),
        //       Text('diocane',
        //       style: TextStyle(color: Colors.amber, fontSize: 20),)
        //       ],
        //     )
        //   ]
        // ),
        body: SingleChildScrollView(
          child: Column(
            children:
              list.map((element) => Text(element)).toList(),
            ),
          ),
        ),
      );
  }
}
