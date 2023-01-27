import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eBook High School',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        canvasColor: Color.fromARGB(255, 252, 255, 229),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              subtitle2: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                color: Colors.white,
              ),
              headline1: const TextStyle(
                fontSize: 32,
                fontFamily: 'LimonR1',
                color: Colors.white,
              ),
              headline2: const TextStyle(
                fontSize: 40,
                fontFamily: 'LimonR1',
                color: Colors.white,
              ),
              headline3: const TextStyle(
                fontSize: 22,
                fontFamily: 'KhmerMool',
                color: Colors.white,
              ),
            ),
      ),
      // home: const CategoriesScreen(),

      routes: {
        '/': (ctx) => const TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
        FilterScreen.routeName: (ctx) => const FilterScreen(),
      },

      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      // },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: ((context) => const CategoriesScreen()));
      },
    );
  }
}
