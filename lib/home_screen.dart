import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of recipes for display
  final List<String> recipes = [
    'Chocolate Cake',
    'Spaghetti Bolognese',
    'Vegetable Curry',
    'Chicken Pie'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'), // Title of the app
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]), // Displaying the recipe name
            onTap: () {
              // Navigate to DetailsScreen when a recipe is tapped
              Navigator.pushNamed(
                context,
                '/details',
                arguments: recipes[index],
              );
            },
          );
        },
      ),
    );
  }
}
