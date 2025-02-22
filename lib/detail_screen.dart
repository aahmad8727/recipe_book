import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieving the recipe name passed as an argument from the HomeScreen
    final String recipeName = ModalRoute.of(context)!.settings.arguments as String;

    // Define a map containing details for each recipe
    final Map<String, Map<String, dynamic>> recipeDetails = {
      'Chocolate Cake': {
        'Ingredients': [
          '2 cups sugar',
          '1-3/4 cups all-purpose flour',
          '3/4 cup cocoa',
          '2 eggs',
          '1/2 cup milk'
        ],
        'Instructions': 'Mix ingredients and bake at 350°F for 35 minutes.'
      },
      'Spaghetti Bolognese': {
        'Ingredients': [
          '400g spaghetti',
          '500g ground beef',
          '1 onion',
          '2 garlic cloves',
          '1 jar of pasta sauce'
        ],
        'Instructions': 'Cook spaghetti, sauté onions and garlic, add beef, mix with sauce, combine with pasta.'
      },
      'Vegetable Curry': {
        'Ingredients': [
          '1 tbsp oil',
          '1 onion',
          '500g mixed vegetables',
          '2 tbsp curry paste',
          '400ml coconut milk'
        ],
        'Instructions': 'Sauté onions, add vegetables and curry paste, pour coconut milk, simmer for 20 minutes.'
      },
      'Chicken Pie': {
        'Ingredients': [
          '1 pie crust',
          '500g chicken breast',
          '1 cup chicken broth',
          '1 onion',
          '250g mixed vegetables'
        ],
        'Instructions': 'Cook chicken and onions, add broth and vegetables, fill pie crust, bake for 30 minutes.'
      }
    };

    // Fetching recipe details based on the selected recipe name
    var ingredients = recipeDetails[recipeName]?['Ingredients']?.join('\n');
    var instructions = recipeDetails[recipeName]?['Instructions'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Details for $recipeName'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients:',
              style: Theme.of(context).textTheme.titleMedium, // Ensure this matches your theme configuration
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(ingredients ?? 'No ingredients found', style: Theme.of(context).textTheme.bodyMedium),
            ),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(instructions ?? 'No instructions found', style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ),
    );
  }
}
