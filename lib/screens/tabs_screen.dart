import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/main_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabScreen(this.favoriteMeals, {Key key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': const CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'page': FavoriteScreen(widget.favoriteMeals),
        'title': 'Your Favorite',
      },
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'] as String,
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Categories',
            icon: const Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Favorites',
            icon: const Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}
