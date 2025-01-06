import 'package:flutter/material.dart';
import 'package:flutter_application_mobile_dev/about_us_page.dart';
import 'package:flutter_application_mobile_dev/ev_charging_calculator.dart';
import 'package:flutter_application_mobile_dev/home_page.dart';
import 'package:flutter_application_mobile_dev/welcome_page.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MaterialApp(home: Text('Hello World1!'),));
}

// stl shortcut
// MyApp is also wiget.

// State is a storage that store a variable.
// Stateless is a static widget.
// Stateful is a dynamic widget -> Ex. favorite page
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
//         useMaterial3: true,
//         appBarTheme: const AppBarTheme(
//           color: Color.fromARGB(255, 94, 230, 133),
//         ),
//         // appBarTheme is a color of app bar theme (cover all page)
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.grey,
//         ),
//         // colorSchema is a color of application that control the body if doesn't have it will use default color(white).
//       ),

//       home: const HomePage(),
//     );
//   }
// }

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
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 94, 230, 133),
        ),
        // appBarTheme is a color of app bar theme (cover all page)
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
        ),
        // colorSchema is a color of application that control the body if doesn't have it will use default color(white).
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/aboutUsPage': (context) => AboutUsPage(),
        '/welcomePage': (context) => WelcomePage(),
      },

      // home: const HomePage(),
    );
  }
}
