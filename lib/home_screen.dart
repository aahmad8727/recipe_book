import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> recipes = ['Chocolate Cake', 'Spaghetti Bolognese', 'Vegetable Curry', 'Chicken Pie']; // Sample list of recipes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: recipes[index], // Pass the selected recipe name to the DetailsScreen
              );
            },
          );
        },
      ),
    );
  }
}
