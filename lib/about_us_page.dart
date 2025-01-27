import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AboutUsPage",
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Us Page",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
