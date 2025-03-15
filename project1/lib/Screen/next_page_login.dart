import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String nUsername;
  final String nPassword;

  const NextPage({Key? key, required this.nUsername, required this.nPassword})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 37, 143),
        title: Text('Selamat Datang'),
      ),

      body: Center(
        child: Text(
          "Usernama : $nUsername\n\nPassword: $nPassword",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
