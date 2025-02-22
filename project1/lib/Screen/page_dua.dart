import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti dari sebuah widget
        //AppBar : widget
        title: Text('Aplikasi Pertama', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 195, 106, 236),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.local_hospital, size: 35, color: Colors.green),

            Icon(Icons.local_police, size: 35, color: Colors.purple),

            Icon(Icons.local_airport, size: 35, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
