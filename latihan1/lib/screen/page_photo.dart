import 'package:flutter/material.dart';

class PagePhoto extends StatefulWidget {
  const PagePhoto({super.key});

  @override
  State<PagePhoto> createState() => _PagePhotoState();
}

class _PagePhotoState extends State<PagePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Photo'),
        backgroundColor: Color.fromARGB(255, 214, 72, 15),
      ),
      body: Center(child: Image.asset('gambar/pnp.png')),
    );
  }
}
