import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MaterialApp(home: Text('Hello World1!'),));
}

// stl shortcut
// MyApp is also wiget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Must have MaterialApp() to run

      // remove debug banner
      debugShowCheckedModeBanner: false,

      // theme
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.deepPurple),
        // appBarTheme is a color of app bar theme (cover all page)
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        // colorSchema is a color of application that control the body if doesn't have it will use default color(white).
      ),

      home: Scaffold(
        // Scaffold is like form.
        // property : wiget
        appBar: AppBar(
          // title: const Text('Appbar'),
          title: const Text("Appbar"),
          // action is one or more child but leading is have one child only.
          leading: IconButton(
            onPressed: () {
              debugPrint("leading is clicked.");
            },
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("inbox action button is clicked.");
              },
              icon: const Icon(Icons.inbox),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                debugPrint("Profile action button is clicked.");
              },
              icon: const Icon(Icons.person),
              color: Colors.white,
            ),
          ],
        ),
        // body must have 1 wiget(child) only if want to add other wiget must use wrapper ( Column , Row or etc.) to set layout.
        // if have button or elements it will be paste in body.
        body: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: "Current SOC%",
                  hintText: "Enter current state of charge (%)",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
