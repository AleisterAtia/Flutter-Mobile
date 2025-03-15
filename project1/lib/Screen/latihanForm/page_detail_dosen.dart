import 'package:flutter/material.dart';

class PageDetailDosen extends StatelessWidget {
  //item movie
  final Map<String, dynamic> itemMovie;
  const PageDetailDosen(this.itemMovie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemMovie['judul'])),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  itemMovie['gambar'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 350,
                ),
              ),
              SizedBox(height: 20),
              Text(
                itemMovie['judul'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 15),
              Text("${itemMovie['NIDN']}", style: TextStyle(color: Colors.red)),
              SizedBox(height: 15),
              Text(
                itemMovie['email'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
