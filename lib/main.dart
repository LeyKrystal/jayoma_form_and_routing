import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chapter_1(),
    );
  }
}

class Chapter_1 extends StatefulWidget {
  @override
  _Chapter_1State createState() => _Chapter_1State();
}

class _Chapter_1State extends State<Chapter_1> {
  TextEditingController chapterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        backgroundColor: Colors.pink,
        leading: Icon(Icons.code),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: chapterController,
            decoration: InputDecoration(labelText: "Enter your name"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Chapter_2(name: chapterController.text),
                ),
              );
            },
            child: Text("Go to Chapter 2"),
          ),
        ],
      ),
    );
  }
}

class Chapter_2 extends StatelessWidget {
  String? name;

  Chapter_2({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Chapter 2"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            "Welcome $name to Chapter 2",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go Back to Chapter 1"),
          ),
        ],
      ),
    );
  }
}
