import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String recipeName = ModalRoute.of(context)!.settings.arguments as String;
    final Map<String, dynamic> recipeDetails = {
      'Chocolate Cake': {
        'Ingredients': ['2 cups sugar', '1-3/4 cups all-purpose flour', '3/4 cup cocoa', '2 eggs', '1/2 cup milk'],
        'Instructions': 'Mix ingredients, bake at 350 degrees for 35 minutes.'
      },
      // Add other recipes similarly...
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ingredients', style: Theme.of(context).textTheme.headline6),
              for (var ingredient in recipeDetails[recipeName]['Ingredients'])
                Text(ingredient),
              SizedBox(height: 20),
              Text('Instructions', style: Theme.of(context).textTheme.headline6),
              Text(recipeDetails[recipeName]['Instructions']),
            ],
          ),
        ),
      ),
    );
  }
}
