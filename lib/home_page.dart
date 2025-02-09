import 'package:flutter/material.dart';
import 'package:flutter_application_mobile_dev/welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Homepage",
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
                  "List Page",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     /*
            //     Navigator.push
            //     will push page/route/screen in to stack
            //     Should use push 2-3 layer only
            //     (Go/Back)
            //      */
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const WelcomePage(),
            //       ),
            //     );
            //   },
            //   child: const Text("WelcomePage"),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/welcomePage');
              },
              child: const Text("WelcomePage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/aboutUsPage');
              },
              child: const Text("AboutUsPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/evChargePage');
              },
              child: const Text("EvChargingPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listViewPage');
              },
              child: const Text("ListViewPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listViewSaparatePage');
              },
              child: const Text("ListViewPageSaparatedPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myFutureBuilderPage');
              },
              child: const Text("MyFutureBuilderPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/httpBasicRequestPage');
              },
              child: const Text("httpBasicRequestPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mylistpage');
              },
              child: const Text("mylistpage"),
            ),
          ],
        ),
      ),
    );
  }
}
