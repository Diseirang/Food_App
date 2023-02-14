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
<<<<<<< HEAD
              displaySmall: const TextStyle(
                fontSize: 22,
=======
              headline3: const TextStyle(
                fontSize: 18,
>>>>>>> b43f388d3c7c4a31334398b8ee6ca353f6b938dc
                fontFamily: 'KhmerMool',
                color: Colors.white,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.amber),
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
