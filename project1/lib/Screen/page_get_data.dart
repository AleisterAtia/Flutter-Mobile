import 'package:flutter/material.dart';

class PageGetData extends StatelessWidget {
  final int index;
  const PageGetData(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 202, 71, 228),
        title: Text('Get Data List Ke $index'),
      ),
      body: Center(child: Text('Detail Berita Ke $index')),
    );
  }
}
