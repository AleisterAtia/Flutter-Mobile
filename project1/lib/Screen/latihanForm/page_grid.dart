import 'package:flutter/material.dart';
import 'package:project1/Screen/latihanForm/page_detail_dosen.dart';

class PageDataDosenDua extends StatefulWidget {
  const PageDataDosenDua({super.key});

  @override
  State<PageDataDosenDua> createState() => _PageGridState();
}

class _PageGridState extends State<PageDataDosenDua> {
  @override
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "Fadhil Dzaky Arhab",
      "gambar": "gambar/movie1.jpg",
      "NIDN": 3462626,
      "email": "fdzakyarhab@gmail.com",
    },
    {
      "judul": "Alex Mahone",
      "gambar": "gambar/movie2.png",
      "NIDN": 91281972,
      "email": "mahone@gmail.com",
    },
    {
      "judul": "Sona",
      "gambar": "gambar/movie3.jpg",
      "NIDN": 13245,
      "email": "sona@gmail.com",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageDetailDosen(listMovie[index]),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.asset(
                        listMovie[index]["gambar"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(
                          listMovie[index]["judul"],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("NIDN. ${listMovie[index]["NIDN"]}"),
                        Text(
                          listMovie[index]["email"],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
