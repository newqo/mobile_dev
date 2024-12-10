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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 80,
                height: 80,
              ),
            ],
          ),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 250,
                  height: 100,
                ),
                const Text(
                  "ขอบคุณที่ใช้บริการ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "สรุปรายละเอียดการชาร์จ",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text(
                          "วันที่ชาร์จ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "9 ธันวาคม 2567",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.battery_charging_full),
                        Text(
                          "สถานีชาร์จ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "PEA VOLTA ABC \nabc#123",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.battery_0_bar),
                        Text(
                          "ประเภทหัวชาร์จ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "CCS2",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.timer),
                        Text(
                          "ระยะเวลาชาร์จ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "00:57:34",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.electric_bolt_sharp),
                        Text(
                          "จำนวนหน่วย",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "15.345 KWh",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ค่าบริการรวมทั้งสิ้น",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Text(
                      "123.46 บาท",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     debugPrint("FAB is clicked.");
        //   },
        //   child: const Icon(Icons.shopping_bag_rounded),
        //   // const Text(
        //   //   "FAB",
        //   //   style: TextStyle(
        //   //     fontSize: 18,
        //   //     fontWeight: FontWeight.bold,
        //   //   ),
        //   // ),
        // ),
      ),
    );
  }
}
