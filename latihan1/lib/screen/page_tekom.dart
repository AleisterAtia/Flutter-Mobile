import 'package:flutter/material.dart';

class PageTekom extends StatefulWidget {
  const PageTekom({super.key});

  @override
  State<PageTekom> createState() => _PageTekomState();
}

class _PageTekomState extends State<PageTekom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 72, 15),
        title: Text('Teknik Komputer', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'Teknik Komputer adalah jurusan yang menggabungkan ilmu komputer dan teknik elektro untuk merancang serta mengembangkan perangkat keras dan perangkat lunak komputer. Mahasiswa jurusan ini mempelajari sistem tertanam, arsitektur komputer, pemrograman tingkat rendah, serta jaringan dan keamanan komputer. Teknik Komputer juga berfokus pada pembuatan dan optimalisasi perangkat keras seperti prosesor, mikrokontroler, dan sistem elektronik lainnya yang mendukung berbagai teknologi modern.Jurusan ini menyiapkan lulusannya untuk menjadi ahli dalam bidang pengembangan sistem komputasi cerdas, IoT (Internet of Things), serta robotika. Selain itu, mereka juga dapat bekerja di bidang infrastruktur jaringan, desain sistem digital, dan keamanan siber. Dengan semakin berkembangnya teknologi, lulusan Teknik Komputer sangat dibutuhkan dalam berbagai industri, termasuk manufaktur, otomasi, telekomunikasi, dan pengembangan perangkat teknologi canggih.',
        ),
      ),
    );
  }
}
