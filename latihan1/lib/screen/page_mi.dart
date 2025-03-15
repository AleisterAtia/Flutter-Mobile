import 'package:flutter/material.dart';

class PageInformatika extends StatefulWidget {
  const PageInformatika({super.key});

  @override
  State<PageInformatika> createState() => _PageInformatikaState();
}

class _PageInformatikaState extends State<PageInformatika> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 72, 15),
        title: Text('Informatika', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'Manajemen Informatika adalah bidang yang berfokus pada pengelolaan sistem informasi dan teknologi dalam suatu organisasi. Jurusan ini mempelajari berbagai aspek teknologi informasi, termasuk pemrograman, basis data, jaringan komputer, serta analisis dan desain sistem informasi. Lulusan Manajemen Informatika diharapkan mampu mengembangkan perangkat lunak, mengelola data dalam skala besar, serta mengimplementasikan solusi teknologi untuk meningkatkan efisiensi bisnis dan organisasi.Selain aspek teknis, mahasiswa Manajemen Informatika juga dibekali dengan keterampilan manajerial dan analisis data untuk membantu pengambilan keputusan berbasis teknologi. Mereka akan memahami bagaimana mengintegrasikan teknologi dengan kebutuhan bisnis untuk meningkatkan produktivitas dan efektivitas perusahaan. Dengan perkembangan digital yang pesat, lulusan jurusan ini memiliki peluang kerja yang luas, seperti menjadi analis sistem, pengembang aplikasi, administrator basis data, atau spesialis keamanan siber.',
        ),
      ),
    );
  }
}
