import 'package:flutter/material.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteScreen( this.favoriteMeals, {Key key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('You don\'t have favorite yet!'),
    );
  }
}
