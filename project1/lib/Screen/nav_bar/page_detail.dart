import 'package:flutter/material.dart';

class PageDetailMovie extends StatelessWidget {
  final Map<String, dynamic> itemMovie;
  const PageDetailMovie({super.key, required this.itemMovie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Detail Movie', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(children: [
            ClipRRect(
            child: Image.asset(
              itemMovie['poster'],
              fit: BoxFit.cover,width: double.infinity,
            ),
          ),
          SizedBox(height: 10,),
          Text(itemMovie['title'], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 10,),
          Text(itemMovie['Rp'], style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
          ],              
          ),
        ),
      ),
    );
  }
}
