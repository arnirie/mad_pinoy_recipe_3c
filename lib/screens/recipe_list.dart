import 'package:flutter/material.dart';
import 'package:mad_pinoy_recipe_3c/models/category.dart';

class RecipeListScreen extends StatelessWidget {
  RecipeListScreen({super.key, required this.category});

  Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
        backgroundColor: category.color,
      ),
    );
  }
}
