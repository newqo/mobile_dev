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
        appBarTheme: const AppBarTheme(color: Colors.lightBlue),
        // appBarTheme is a color of app bar theme (cover all page)
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        // colorSchema is a color of application that control the body if doesn't have it will use default color(white).
      ),

      home: Scaffold(
        // Scaffold is like form.
        // property : wiget
        appBar: AppBar(
          title: const Text('Appbar'),
          // action is one or more child but leading is have one child only.
          leading: IconButton(
            onPressed: () {
              debugPrint("leading is clicked.");
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("inbox action button is clicked.");
              },
              icon: const Icon(Icons.inbox),
            ),
            IconButton(
              onPressed: () {
                debugPrint("Profile action button is clicked.");
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
        // body must have 1 wiget(child) only if want to add other wiget must use wrapper ( Column , Row or etc.) to set layout.
        // if have button or elements it will be paste in body.
        body: Column(
          children: [
            const Text(
              "My mobile application",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Hello mobile app.",
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            // Image.network("https://picsum.photos/250?image=9"),
            // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM5kt9cWqI1xeKY9K3eRPq7tDbxKPd05cdiQ&s"),
            Row(
              children: [
                Image.asset(
                  "assets/images/sheep.jpg",
                  width: 120,
                  height: 200,
                ),
                const Column(
                  children: [
                    Text(
                      "Paragraph Title",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text("Text abc 12345 aaaaaaaaaa")
                  ],
                )
              ],
            ),

            // Image.asset(
            //   "assets/images/sheep.jpg",
            //   width: 100,
            //   height: 120,
            // ),
            // Image.asset(
            //   "assets/images/forest.jpg",
            //   width: 100,
            //   height: 120,
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    debugPrint("clicked button");
                    // print("clicked button 2");
                  }, // onPreesed : function
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ), // child is text in button
                ),
                IconButton(
                  onPressed: () {
                    debugPrint("Icon button is clicked.");
                  },
                  icon: const Icon(Icons.rocket_launch_rounded),
                  iconSize: 40,
                ),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB is clicked.");
          },
          child: const Icon(Icons.shopping_bag_rounded),
          // const Text(
          //   "FAB",
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ),

        // const Column(
        //   children: [
        //     Text(
        //       'Hello world',
        //       style: TextStyle(
        //         fontSize: 25,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     Text(
        //       "my mobile app",
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.normal,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Worawit Kimhenglee'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Worawit Kimhenglee Count Down:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }