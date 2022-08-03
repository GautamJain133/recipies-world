import 'package:flutter/material.dart';
import 'package:recipibook/features/home/widgets/categoryscreen.dart';
import 'package:recipibook/features/home/widgets/favouritescreen.dart';

import '../../../common/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;

  void _changePage(index) {
    setState(() {
      _pageIndex = index;
    });
  }

  final _pages = [
    {
      "screen": const CategoriesScreen(),
      "title": "category",
    },
    {
      "screen": const FavouriteScreen(),
      "title": "Favoirite",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _pages[_pageIndex]['title'] as String,
            ),
            const Text(
              "Developed by gautam",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: _pages[_pageIndex]["screen"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.category),
              label: "Categories"),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favourite",
          ),
        ],
      ),
    );
  }
}
