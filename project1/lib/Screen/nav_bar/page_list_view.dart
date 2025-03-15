import 'package:flutter/material.dart';
import 'package:project1/Screen/nav_bar/page_register.dart';

class PageListView extends StatefulWidget {
  const PageListView({super.key});

  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView>
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
      body: TabBar(tabs: [PageRegister()]),
    );
  }
}
