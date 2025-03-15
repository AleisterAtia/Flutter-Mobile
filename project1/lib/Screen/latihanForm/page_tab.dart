import 'package:flutter/material.dart';
import 'package:project1/Screen/latihanForm/pageRegister.dart';
import 'package:project1/Screen/latihanForm/page_grid.dart';
import 'package:project1/Screen/nav_bar/page_grid_view.dart';
import 'package:project1/Screen/nav_bar/page_list_view.dart';

class PageToolbarDua extends StatefulWidget {
  const PageToolbarDua({super.key});

  @override
  State<PageToolbarDua> createState() => _PageToolbarState();
}

class _PageToolbarState extends State<PageToolbarDua>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Nav Bar", style: TextStyle(color: Colors.white)),
      ),
      body: TabBarView(
        controller: tabController,
        children: [PageRegisterDua(), PageListView(), PageDataDosenDua()],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: "Form Register", icon: Icon(Icons.input)),
            Tab(text: "Form Register", icon: Icon(Icons.input)),
            Tab(text: "Form Register", icon: Icon(Icons.input)),
          ],
        ),
      ),
    );
  }
}
