import 'package:flutter/material.dart';
import 'package:project1/Screen/nav_bar/page_detail.dart';

class PageGridView extends StatefulWidget {
  const PageGridView({super.key});

  @override
  State<PageGridView> createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  List<Map<String, dynamic>> listmovie = [
    {
      "Judul": "Clao Alberto",
      "image": "assets/gambar/movie2.png",
      "Harga": 1000000,
    },
    {
      "Judul": "Clao Alberto",
      "image": "assets/gambar/movie2.png",
      "Harga": 1000000,
    },
    {
      "Judul": "Clao Alberto",
      "image": "assets/gambar/movie2.png",
      "Harga": 1000000,
    },
    {
      "Judul": "Clao Alberto",
      "image": "assets/gambar/movie2.png",
      "Harga": 1000000,
    },
    {
      "Judul": "Clao Alberto",
      "image": "assets/gambar/movie2.png",
      "Harga": 1000000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: listmovie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 0.7,
          ),

          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            PageDetailMovie(itemMovie: listmovie[index]),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.asset(
                        listmovie[index]["image"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(listmovie[index]["Judul"]),
                        Text(listmovie[index]["Harga"].toString()),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
