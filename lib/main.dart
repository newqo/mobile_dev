import 'package:flutter/material.dart';
import 'package:flutter_application_mobile_dev/ev_charging_calculator.dart';

void main() {
  runApp(const MyApp());
}

// stf shortcut
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

      home: EvChargingCalculator(),
    );
  }
}
