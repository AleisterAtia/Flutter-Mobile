import 'package:flutter/material.dart';
import 'package:latihan1/screen/page_mi.dart';
import 'package:latihan1/screen/page_photo.dart';
import 'package:latihan1/screen/page_pnp.dart';
import 'package:latihan1/screen/page_tekom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Politeknik Negeri Padang',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 138, 61),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Agar tombol tetap di tengah
          children: [
            Image.asset(
              'gambar/pnp.png', // Ganti dengan nama file gambar yang benar
              width: 150, // Sesuaikan ukuran gambar
              height: 150,
            ),
            SizedBox(height: 20),

            Text(
              "Selamat Datang di Politeknik Negeri Padang",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30), // Jarak atas sebelum tombol pertama

            buildMenuButton(
              context,
              "Tentang Politeknik Negeri Padang",
              PagePoli(),
            ),
            SizedBox(height: 20),

            buildMenuButton(
              context,
              "Manajemen Informatika",
              PageInformatika(),
            ),
            SizedBox(height: 20),

            buildMenuButton(context, "Teknik Komputer", PageTekom()),
            SizedBox(height: 20),

            buildMenuButton(context, "Galeri Photo", PagePhoto()),
          ],
        ),
      ),
    );
  }

  Widget buildMenuButton(BuildContext context, String title, Widget page) {
    return SizedBox(
      width: 450, // Menyamakan lebar semua tombol
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color.fromARGB(255, 23, 138, 61),
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.symmetric(
          vertical: 15,
        ), // Menyesuaikan tinggi tombol
        child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
