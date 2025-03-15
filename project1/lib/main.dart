import 'package:flutter/material.dart';
import 'package:project1/Screen/latihanForm/page_tab.dart';
import 'package:project1/Screen/nav_bar/page_grid_view.dart';
import 'package:project1/Screen/nav_bar/page_list_view.dart';
import 'package:project1/Screen/nav_bar/page_tab_bar.dart';
import 'package:project1/Screen/page_chace_image.dart';
import 'package:project1/Screen/page_dua.dart';
import 'package:project1/Screen/page_empat.dart';
import 'package:project1/Screen/page_gambar.dart';
import 'package:project1/Screen/page_list_data.dart';
import 'package:project1/Screen/page_notif.dart';
import 'package:project1/Screen/page_satu.dart';
import 'package:project1/Screen/page_simple_login.dart';
import 'package:project1/Screen/page_tiga.dart';
import 'package:project1/Screen/page_url_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        // flf
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
        //appBar : properti dari sebuah widget
        //AppBar : widget
        title: Text('Aplikasi Pertama', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 143, 58, 151),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selamat Datang di Flutter App pertama MI2B"),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageSatu()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                //ini untuk pindah page
                // color: Colors.purple,
                child: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageDua()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTiga()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                //ini untuk pindah page
                // color: Colors.purple,
                child: Text(
                  'Page 3',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageEmpat()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page 4',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageGambar()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Gambar',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageUrlImage()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page URL Image',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageCacheImage()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Cache',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageNotif()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Notification',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageListdata()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Lis Data',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageSimpleLogin()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Login',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageToolbar()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Tab Bar',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageToolbarDua()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Form Dosen',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageGridView()),
                  );
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini untuk pindah page
                color: Color(0xDDF15C14FF),
                clipBehavior: Clip.antiAlias,
                // color: Colors.purple,
                child: Text(
                  'Page Grid',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ],
        ),

        //child :  cuma bisa nampung 1 widget
        //children : bisa nampung beberapa widget
      ),
    );
  }
}
