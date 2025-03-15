import 'package:flutter/material.dart';
import 'package:project1/Screen/nav_bar/page_grid_view.dart';
import 'package:project1/Screen/nav_bar/page_list_view.dart';
import 'package:project1/Screen/nav_bar/page_register.dart';

class PageToolbar extends StatefulWidget {
  const PageToolbar({super.key});

  @override
  State<PageToolbar> createState() => _PageToolbarState();
}

class _PageToolbarState extends State<PageToolbar>
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
        children: [PageRegister(), PageListView(), PageGridView()],
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
