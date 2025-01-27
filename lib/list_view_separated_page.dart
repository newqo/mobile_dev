import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatefulWidget {
  const ListViewSeparatedPage({super.key});

  @override
  State<ListViewSeparatedPage> createState() => _ListViewSeparatedPageState();
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {
  final List<String> product = <String>[
    "Mobile",
    "Tablet",
    "NoteBook",
    "Router",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListViewSaparatedPage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: product.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(product[index]),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
