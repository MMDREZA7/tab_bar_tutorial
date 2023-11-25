import 'package:flutter/material.dart';
import 'package:tab_bar_tutorial/pages/other_pages/account_page.dart';
import 'package:tab_bar_tutorial/pages/other_pages/home_page.dart';
import 'package:tab_bar_tutorial/pages/other_pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabController? controller;

  int _selectedIndex = 0;

  void tabBarNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'T A B B A R',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              controller: controller,
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.brown[700]),
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.brown[700]),
                ),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.brown[700]),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  HomePage(),
                  AccountPage(),
                  SettingsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
