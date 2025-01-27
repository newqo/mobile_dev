import 'package:flutter/material.dart';
import 'package:flutter_application_mobile_dev/about_us_page.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListViewPage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.ev_station),
            title: const Text(
              "EV Charging Calculator",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
            subtitle: const Text("Sub title ........."),
            trailing: const Icon(Icons.arrow_forward_ios),
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => AboutUsPage()),
            // ),
            onTap: () => Navigator.pushNamed(context, "/evChargePage"),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
              "About Us",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
            subtitle: const Text("Sub title info ......"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pushNamed(context, "/aboutUsPage"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Setting",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
            subtitle: Text("Setting ......."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
