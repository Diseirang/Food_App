import 'package:flutter/material.dart';

class MealItems extends StatelessWidget {
  const MealItems({super.key});
  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
