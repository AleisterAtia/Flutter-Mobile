import 'package:flutter/material.dart';

class PagePoli extends StatefulWidget {
  const PagePoli({super.key});

  @override
  State<PagePoli> createState() => _PagePoliState();
}

class _PagePoliState extends State<PagePoli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 72, 15),
        title: Text(
          'Politeknik Negeri Padang',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'Teknik Komputer merupakan kombinasi antara teknik elektro dan ilmu komputer. Jurusan ini berfokus pada perancangan, pengembangan, dan pemeliharaan perangkat keras (hardware) serta integrasi dengan perangkat lunak (software).',
        ),
      ),
    );
  }
}
