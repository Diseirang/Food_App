import 'package:flutter/material.dart';
import 'package:food_app/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filter'),
      ),
      // drawer: const MainDrawer(),
      body: const Center(
        child: Text('Filters!'),
      ),
    );
  }
}
