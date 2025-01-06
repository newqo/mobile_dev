import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String? name; // ? is null can accept.
  final int? age;

  const DisplayPage({super.key, this.name, this.age});
  // const DisplayPage({super.key, this.name, required this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Page",
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Hi ${widget.name} , Age: ${widget.age}",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Back"))
          ],
        ),
      ),
    );
  }
}
