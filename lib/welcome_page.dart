import 'package:flutter/material.dart';
import 'package:flutter_application_mobile_dev/display_page.dart';

// stf shortcut
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = "";
  // String? nameInput;
  // int? ageInput;
  final _name = TextEditingController();
  final _age = TextEditingController();
  // final _name = TextEditingController();

  @override
  void initState() {
    super.initState();
    debugPrint("initState");
    _output = "Enter your name";
  }

  @override
  void dispose() {
    // clear up the controller when widget is dispose
    super.dispose();
    debugPrint("dispose");
    _output = "";
  }

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
        // leading: IconButton(
        //   onPressed: () {
        //     debugPrint("leading is clicked.");
        //   },
        //   icon: const Icon(Icons.menu),
        //   color: Colors.black,
        // ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       debugPrint("inbox action button is clicked.");
        //     },
        //     icon: const Icon(Icons.inbox),
        //     color: Colors.black,
        //   ),
        //   IconButton(
        //     onPressed: () {
        //       debugPrint("Profile action button is clicked.");
        //     },
        //     icon: const Icon(Icons.person),
        //     color: Colors.black,
        //   ),
        // ],
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
            // Text('$_output'),
            TextField(
              controller: _name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter name",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _age,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter age",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String nameInput = _name.text;
                int ageInput = int.parse(_age.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayPage(
                      name: nameInput,
                      age: ageInput,
                    ),
                  ),
                );
                // setState(
                //   () {
                //     _output = "Hello, input is $nameInput";
                //   },
                // );
                // debugPrint("Button is clicked. Output is $_output");
              },
              child: const Text("push"),
            ),
            ElevatedButton(
              onPressed: () {
                String nameInput = _name.text;
                int ageInput = int.parse(_age.text);
                // push replace not keep in stack 1 layer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayPage(
                      name: nameInput,
                      age: ageInput,
                    ),
                  ),
                );
                // setState(
                //   () {
                //     _output = "Hello, input is $nameInput";
                //   },
                // );
                // debugPrint("Button is clicked. Output is $_output");
              },
              child: const Text("Push Replacement"),
            ),
            ElevatedButton(
              onPressed: () {
                String nameInput = _name.text;
                int ageInput = int.parse(_age.text);
                // push and remove is clear all page in stack
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPage(
                        name: nameInput,
                        age: ageInput,
                      ),
                    ),
                    (route) => false);
                // setState(
                //   () {
                //     _output = "Hello, input is $nameInput";
                //   },
                // );
                // debugPrint("Button is clicked. Output is $_output");
              },
              child: const Text("PushAndRemoveUntil"),
            ),
          ],
        ),
      ),
    );
  }
}
