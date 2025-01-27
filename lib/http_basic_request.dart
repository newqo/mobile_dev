import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpBasicRequest extends StatefulWidget {
  const HttpBasicRequest({super.key});

  @override
  State<HttpBasicRequest> createState() => _HttpBasicRequestState();
}

class _HttpBasicRequestState extends State<HttpBasicRequest> {
  Future<String> fetchData() async {
    final response =
        await http.get(Uri.parse("https://itpart.net/mobile/api/product1.php"));

    if (response.statusCode == 200) {
      // final jsonBody = json.decode(response.body);
      // final jsonBody = jsonDecode(utf8.decode(response.bodyBytes));
      String strBody = response.body.toString();
      debugPrint(strBody);
      return strBody;
    } else {
      throw Exception("problem ...");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP Basic Request",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return Text('Result: ${snapshot.data}',
                style: const TextStyle(fontSize: 20));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
