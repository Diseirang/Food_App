import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
<<<<<<< HEAD
    Function(bool) updateValue,
=======
    Function updateValue,
>>>>>>> b43f388d3c7c4a31334398b8ee6ca353f6b938dc
  ) {
    return SwitchListTile(
      title: Text(
        title,
<<<<<<< HEAD
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(description),
      value: currentValue,
      onChanged: updateValue,
=======
        style: Theme.of(context).textTheme.subtitle1,
      ),
      subtitle: Text(description),
      value: currentValue,
      onChanged: updateValue(),
>>>>>>> b43f388d3c7c4a31334398b8ee6ca353f6b938dc
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Your Filter'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals.',
                  _glutenFree,
                  (newValue) {
                    setState(
                      () {
                        _glutenFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals.',
                  _lactoseFree,
<<<<<<< HEAD
                  (newValue) {
                    setState(
                      () {
                        _lactoseFree = newValue;
=======
                  () {
                    setState(
                      () {
                        _lactoseFree;
>>>>>>> b43f388d3c7c4a31334398b8ee6ca353f6b938dc
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals.',
                  _vegetarian,
<<<<<<< HEAD
                  (newValue) {
                    setState(
                      () {
                        _vegetarian = newValue;
=======
                  () {
                    setState(
                      () {
                        _vegetarian;
>>>>>>> b43f388d3c7c4a31334398b8ee6ca353f6b938dc
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals.',
                  _vegan,
<<<<<<< HEAD
                  (newValue) {
                    setState(
                      () {
                        _vegan = newValue;
=======
                  () {
                    setState(
                      () {
                        _vegan;
>>>>>>> b43f388d3c7c4a31334398b8ee6ca353f6b938dc
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
