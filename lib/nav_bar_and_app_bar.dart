import 'package:audibooks_ui/app_colors.dart';
import 'package:audibooks_ui/tabs/Decument_tab.dart';

import 'package:audibooks_ui/tabs/home_tab.dart';
import 'package:audibooks_ui/tabs/search_tab.dart';
import 'package:flutter/material.dart';

class NavBarAndAppBar extends StatefulWidget {
  const NavBarAndAppBar({super.key});

  @override
  State<NavBarAndAppBar> createState() => _NavBarAndAppBarState();
}

class _NavBarAndAppBarState extends State<NavBarAndAppBar> {
  int _selectedIndex = 0;

  final List<Widget> _body = [
    const Home_tab(),
    const Search_tab(),
    const DecumentTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/Logo.png",
            width: 165,
            height: 40,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Icon(
              Icons.settings,
              size: 24,
              color: app_colors.perpule,
            ),
          ),
        ],
      ),
      body: _body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/Home.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/Search.png")),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/Document.png")),
            label: "Document",
          ),
        ],
      ),
    );
  }
}