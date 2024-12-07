import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MaterialApp(home: Text('Hello World1!'),));
}

// stl shortcut
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Must have MaterialApp() to run

//       // remove debug banner
//       debugShowCheckedModeBanner: false,

//       // theme
//       theme: ThemeData(
//           useMaterial3: true,
//           appBarTheme: AppBarTheme(color: Colors.lightBlue)),

//       home: Scaffold(
//         // Scaffold is like form.
//         appBar: AppBar(
//           title: Text('Appbar title'),
//         ),
//         body: Text(
//             'Hello world'), // if have button or elements it will be paste in body.
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Worawit Kimhenglee'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Worawit Kimhenglee',
            ),
            const Text(
              '6504062610226',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
