import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoriteScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const FavoriteScreen(this.favoriteMeals, {Key key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
   

  @override
  Widget build(BuildContext context) {
    if (widget.favoriteMeals.isEmpty) {
      return const Center(
        child: Text('You don\'t have favorite yet!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItems(
            id: widget.favoriteMeals[index].id,
            title: widget.favoriteMeals[index].title,
            imageUrl: widget.favoriteMeals[index].imageUrl,
            duration: widget.favoriteMeals[index].duration,
            complexity: widget.favoriteMeals[index].complexity,
            affordability: widget.favoriteMeals[index].affordability,
          );
        },
        itemCount: widget.favoriteMeals.length,
      );
    }
  }
}
