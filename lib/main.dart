import 'package:flutter/material.dart';
import './const_data/dummy_data.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';
import 'models/meal.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'vegan': false,
    'lactose': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = dummymeals;

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = dummymeals.where((meal)  {
        if (_filters['gluten'] && !meal.isGlutenFree) {
        return false;
        }
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eBook High School',
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 252, 255, 229),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              titleSmall: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                color: Colors.white,
              ),
              displayLarge: const TextStyle(
                fontSize: 32,
                fontFamily: 'LimonR1',
                color: Colors.white,
              ),
              displayMedium: const TextStyle(
                fontSize: 40,
                fontFamily: 'LimonR1',
                color: Colors.white,
              ),
              displaySmall: const TextStyle(
                fontSize: 22,
                fontFamily: 'KhmerMool',
                color: Colors.white,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.amber),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/', // default is '/'

      routes: {
        '/': (ctx) => const TabScreen(),
        CategoryMealsScreen.routeName: (ctx) =>
            const CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(_setFilters),
      },

      onGenerateRoute: (settings) {
        print(settings.arguments);
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: ((ctx) => const CategoriesScreen()));
      },
    );
  }
}
