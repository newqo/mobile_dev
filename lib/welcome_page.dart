import 'package:flutter/material.dart';

// stf shortcut
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = "";
  final _textInput = TextEditingController();
  // final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            debugPrint("leading is clicked.");
          },
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("inbox action button is clicked.");
            },
            icon: const Icon(Icons.inbox),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              debugPrint("Profile action button is clicked.");
            },
            icon: const Icon(Icons.person),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello, welcome to my page.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text('$_output'),
            TextField(
              controller: _textInput,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter input",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String input = _textInput.text;
                setState(() {
                  _output = "Hello, input is $input";
                });
                debugPrint("Button is clicked. Output is $_output");
              },
              child: const Text("Button"),
            ),
          ],
        ),
      ),
    );
  }
}
